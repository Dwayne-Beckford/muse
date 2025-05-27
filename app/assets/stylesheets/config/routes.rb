#config/routes.rb
# [...]

# The `new` route needs to be placed before the `show` route
get "artworks/new", to:"artworks#new"
