class DashbordController < ApplicationController
	protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
	before_filter :admin_only, :except => [:index, :packing_list]
	
	def index
		
	end
end
