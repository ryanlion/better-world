class BicyclesController < ApplicationController
  def show
  end

  def index
	@bicycle = Bicycle.all
  end

  def create
  end

  def delete
  end

  def update
  end
end
