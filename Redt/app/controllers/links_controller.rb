class LinksController < ApplicationController

	before_action :require_authentication, only: [:new, :create, :edit, :update, :destroy,]

  def index

  end

  def show
  end

  def new
  end

  def edit
  end
end
