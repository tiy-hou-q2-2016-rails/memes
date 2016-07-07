class Api::ImagesController < ApplicationController

  protect_from_forgery with: :null_session

  before_action :doorkeeper_authorize!

  before_action do
    request.format = :json
  end

  def index
    @images = Image.all
  end

  def create
    @image= Image.new
    @image.photo_url = params[:image][:photo_url]
    if @image.save
      render :show, status: 201
      # redirect_to root_path
    else
      render json: {errors: @image.errors}, status: 422
      # render :new
    end
  end
end
