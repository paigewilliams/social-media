class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name])
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    # Link.where(:user_id == 1)
    @links= Link.where(user_id: @user.id)
  end


end
