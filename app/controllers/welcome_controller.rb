class WelcomeController < ApplicationController
  def index
    @bands = Band.all
  end
end
