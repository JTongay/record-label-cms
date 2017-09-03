class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @album.songs.build
    @bands = []
    Band.all.each do |b|
      @bands.push([b.band_name, b.id])
    end
  end

  def index
    @albums = Album.order('release_date DESC')
  end

  def create
    @album = Album.new(album_params)
    puts @album
    puts album_params
    if @album.save
      redirect_to root_url, notice: "#{@album.title} was created"
    end
  end

  private

  def album_params
    params.require(:album).permit(:band_ids, :title, :release_date, :songs_attributes => [:title])
  end

end
