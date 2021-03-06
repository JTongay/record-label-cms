class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
    @albums = Band.find(params[:id]).albums.order('release_date DESC')
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    puts band_params
    if @band.save
      redirect_to root_url, notice: "#{@band.band_name} was created"
    end
  end


  private

  def band_params
    params.require(:band).permit(:band_name, :city, :state, :start_date, :avatar)
  end

end
