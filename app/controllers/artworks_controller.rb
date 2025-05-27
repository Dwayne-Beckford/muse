# app/controllers/artworks_controller.rb
#[...]
class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new # Needed to instantiate simple_form
  end
end
