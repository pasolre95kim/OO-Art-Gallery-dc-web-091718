require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


picasso = Artist.new("Picasso", 20)
gogh = Artist.new("Van Gogh", 30)
davinci = Artist.new("Davinci", 50)
patrick = Artist.new("Patrick", 20)


tall = Gallery.new("Tall", "DC")
corner = Gallery.new("Corner", "ATL")
smithsonian = Gallery.new("Smithsonian", "DC")
mac = Gallery.new("Mac", "ATL")
cup = Gallery.new("Cup", "Philadelphia")


starry_night = Painting.new("The Starry Night", "modernism", gogh, tall)
mona_lisa = Painting.new("Mona Lisa", "Oil Paint", davinci, corner)
last_supper = Painting.new("Last Supper", "Tempera", davinci, tall)
guernica = Painting.new("Guernica", "Genre Art", picasso, smithsonian)
toby = Painting.new("Toby", "Oil Paint", patrick, mac)











binding.pry
"I love coding"
