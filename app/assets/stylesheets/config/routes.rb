#config/routes.rb
# [...]
Rails.application.routes.draw do
  resources :artworks
end
# The `new` route needs to be placed before the `show` route
# get "artworks/new", to:"artworks#new"
