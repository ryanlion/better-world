class UsersController < ApplicationController
  def show
  end

  def index
	@Users = User.all
  end

  def create
  end

  def delete
  end

  def update
  end
end
