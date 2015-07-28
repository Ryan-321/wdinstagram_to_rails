class PicturesController < ApplicationController


  def index
    @pictures = Picture.all
  end
  def new

  end
  def show
    @picture = Picture.find(params[:id])
  end
  def create
    @picture = Picture.create!(params[:picture]) # use the ! to get the whole params
    redirect_to "/pictures"
  end
  def edit
    @picture = Picture.find(params[:id])
  end
  def update
    @picture = Picture.find(params[:id])
    @picture.update(params[:picture])
    redirect_to "/pictures/#{@picture.id}"
  end
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to "/pictures"
  end

end
