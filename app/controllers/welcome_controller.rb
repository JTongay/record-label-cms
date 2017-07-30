class WelcomeController < ApplicationController
  def index
    @bands = Band.all
    @ordered_albums = Album.order('release_date DESC')
  end
end
