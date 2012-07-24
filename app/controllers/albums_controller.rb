class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.new(params[:album])
    @album.save
    redirect_to @album
  end
  
  def show
    @album = Album.find(params[:id])
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to @album
  end
  
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to '/'
  end

end
