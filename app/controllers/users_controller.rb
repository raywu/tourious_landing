class UsersController < ApplicationController
  def new

  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user
    else
      render :action => "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end