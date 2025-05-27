# app/controllers/artworks_controller.rb
[...]
class ArtworksController
  def new
    @artwork = Artwork.new
  end
end
