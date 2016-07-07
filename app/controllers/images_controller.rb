class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def show
    @image = Image.find_by id: params[:id]
  end

  def create
    @image = Image.new
    @image.photo_url = params[:image][:photo_url]
    if @image.save
      redirect_to image_path(id: @image.id)
    else
      render :new
    end
  end
end
