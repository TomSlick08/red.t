class LinksController < ApplicationController

	before_action :require_authentication

  def index
  	@links = Link.all
  end

  def show
  	@link  = Link.find(params[:id])
  end

  def new
  	@link = Link.new

  end

   def create
  	@link = Link.create(link_url: params[:link][:link_url], user_id: current_user.id)
  	redirect_to link_path(@link)
  end

  def edit
  	@link = Link.find(params[:id])
  end

  def update
  	@link = Link.find(params[:id])
  	@link.save
  	redirect_to link_path(@link)
  end

  def destroy
  	@link = Link.find(params[:id])
  	@link.destroy
    redirect_to links_path
  end

  private
  def link_params
    params.require(:link).permit(:link_url)
  end

end
