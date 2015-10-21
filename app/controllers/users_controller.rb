class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = @user.new(params[:user]) # Not the final implementation
  	if @user.save
  		# Handle a successful save
  	else

  	end
  end
end
