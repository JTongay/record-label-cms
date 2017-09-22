class WelcomeController < ApplicationController

  include SessionsHelper

  def index
    @bands = Band.all
    @ordered_albums = Album.order('release_date DESC')
  end
end
