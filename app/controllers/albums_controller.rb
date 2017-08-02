class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @bands = []
    Band.all.each do |b|
      @bands.push(b.band_name)
    end
    puts @bands
  end

  def index
    @albums = Album.order('release_date DESC')
  end

  def create

  end

  private

  def album_params

  end

end
