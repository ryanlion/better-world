module GoogleClient 
  # This class wraps the commonly used API call to Mail Protection Service
  class API

    attr_reader :gsm_location
    #attr_reader :commission
    #attr_reader :product

    def initialize(protocol, host)
      @connection = GoogleClient::Connection.new(protocol, host)
      @gsm_location = GoogleClient::GsmLocation.new(@connection)
      #@commission = CJ::Commission.new(@connection)
      #@product = CJ::ProductSearch.new(@connection)
    end

  end # of class
end # of module

require_relative 'api/gms_location'
#require_relative 'api/advertiser'
#require_relative 'api/product-search'
