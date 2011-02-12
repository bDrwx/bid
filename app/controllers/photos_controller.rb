class PhotosController < ApplicationController
  load_and_authorize_resource
  def index
    @bid = Bid.find(params[:bid_id])
    @photos = @bid.photos
  end
  def show
    @bid = Bid.find(params[:bid_id])
    @photos = @bid.photos.find(params[:id])
  end
  def new
    @bid = Bid.find(params[:bid_id])
    @photo = @bid.photos.build
  end
  def create
    @bid = Bid.find(params[:bid_id])
    @photo = @bid.photos.build(params[:photo])
    if @photo.save
      redirect_to(@bid)
    else
      render :action => "new"
    end
  end
  def edit
    @bid = Bid.find(params[:bid_id])
    @photo = @bid.photos.find(params[:id])
  end
  def update
    @bid = Bid.find(params[:bid_id])
    @photo = @bid.photos.find(params[:id])
    if @photo.update_attributes(params[:photo])
     # redirect_to bid_photo_url(@bid, @photo)
    redirect_to bid_photos_path(@bid)
    else
      render :action => "edit"
    end
  end
  def destroy
    @bid = Bid.find(params[:bid_id])
    @photo = Photo.find(params[:id])
    @photo.destroy
    respond_to do |format|
      format.html {redirect_to bid_photos_path(@bid)}
      format.xml {head :ok}  
    end    
  end
end
