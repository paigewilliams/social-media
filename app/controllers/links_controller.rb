class LinksController < ApplicationController
  def index
    @links = Link.all
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

  def show
    @link = Link.find(params[:id])
  end

end
