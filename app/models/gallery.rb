class Gallery
@@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

#get all cities that have a gallery.
#city should not repeat
  def self.cities
    Gallery.all.map do |gallery|
      gallery.city
    end.uniq
  end

#gets the gallery's paintings
  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

#get list of artists that have painting at a specific Gallery
#"this gallery's painting's artists"
  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

#get list of names of artists that have paintings
#at a specific gallery
  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

#get combined years of experience of all artists
#at a specific gallery
  def total_years
    all_years = artists.map do |artist|
      artist.years_active
    end
    all_years.inject(:+)
  end
















end
