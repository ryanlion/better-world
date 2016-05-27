class BicyclesController < ApplicationController
  def show
  end

  def index
	@bicycle = Bicycle.all
  end

  def create
      @bicycle = Bicycle.new params["bicycle"].symbolize_keys
      @bicycle.save
      redirect_to bicycles_path
  end

  def new
  end
  def delete
  end

  def update
  end
end
