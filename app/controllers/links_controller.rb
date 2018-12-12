class LinksController < ApplicationController
  def index
    @links = Link.highest_rating
    @users = User.all
    # @user_id = Link.comments.user_id
    # @name_of_user = User.find(@user_id).name
  # binding.pry
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(url: params[:url], user_id: params["format"].to_i)
    if @link.save
      redirect_to users_path(params["format"].to_i)
    else
      render :new
    end
  end

  def edit
    @link = Link.find(params[:id])
    @users = User.all
  end

  def update
    @link = Link.find(params[:id])

    @link.rating += params[:rating].to_i

    @link.comments.new(text: params[:text], user_id: params[:user].to_i, link_id: params[:id].to_i)
    @link.save

    redirect_to links_path
  end

  def show
    @link = Link.find(params[:id])
  end

# SELECT comments.id AS comments_id, comments.user_id, comments.link_id,  users.name FROM comments, users WHERE comments.user_id = users.id;


end
