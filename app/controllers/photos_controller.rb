class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    redirect_to("/photos")
  end

  def destroy
    p = Photo.find(params[:id])
    p.destroy

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def edit_row
    photo = Photo.find_by({ :id => params[:id] })
    photo.caption = params[:caption]
    photo.source = params[:source]
    photo.save

    redirect_to("/photos/#{photo.id}")
  end

end
