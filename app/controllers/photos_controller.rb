class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end
  
  def show
    @photo = Photo.find(params[:id])
  end
  
  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to @photo.album, notice: 'photo was uploaded'
    else
      render action: 'new'
    end
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end
  
  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      redirect_to @photo, notice: 'Photo has been updated'
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url
  end

end
