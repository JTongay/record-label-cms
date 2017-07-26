class AlbumsController < ApplicationController
  def new
    @album = Album.new
    @bands = []
    Band.all.each do |b|
      @bands.push(b.band_name)
    end
    puts @bands
  end
end
