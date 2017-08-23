class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @bands = []
    Band.all.each do |b|
      @bands.push([b.band_name, b.id])
    end
  end

  def index
    @albums = Album.order('release_date DESC')
  end

  def create
    @album = Album.new(album_params).songs.new(songs_params)
    # @album = Band.find(band_params).albums.new(album_params)
    puts @album
    puts album_params
    puts song_params
    if @album.save
      redirect_to root_url, notice: "#{@album.title} was created"
    end
  end

  private

  def album_params
    params.require(:album).permit(:band_ids, :title, :release_date)
  end

  def songs_params
    params.require(:song).permit(:title)
  end

end
