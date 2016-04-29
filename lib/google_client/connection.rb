require 'excon'
#require 'savon'
require_relative 'http'
require_relative 'model/base'

module GoogleClient

  # API connection to AnubisNetwork
  class Connection
    #include AppCara::Utils::Logging

    # initialize a new instance of API connection to AnubisNetwork
    #
    # @param protocol [String] http or https
    # @param host [String] Host or IP address
    def initialize(apikey)
      @api_key = "AIzaSyApV73kiT-C46j_vNyxoN_IUbSbVTfeeOI"
      @rest_url = "https://www.googleapis.com/geolocation/v1/geolocate?key=#{@api_key}"
      @rest_connection = GoogleClient::HTTP.new(@api_key,@rest_url)
    end

    def rest_request(options)
      params = {}
      params[:method] = options[:method]
      params[:path] = options[:path]
      params[:session] = options[:session]
      params[:body] = options[:body] unless options[:body].blank?
      # try to make the API call
      tries = 3
      begin
        response = @rest_connection.request(params)
      rescue Excon::Errors::Timeout
        raise
      rescue Exception => err
        #applog :error, err
        raise "Network Error: #{err.message}"
      end
      # try to parse the error message
      begin
        if response.status == 200 then
          response
        else
          err = GoogleClient::Model::SystemError.from_xml(response.body)
          # TODO: show out response.body?
          raise "Google GSM location API returns http code: #{response.status}: #{err.message}"
        end
      rescue => ex
        #applog :error, ex
        raise
      end
    end

  end # of class
end # of module
