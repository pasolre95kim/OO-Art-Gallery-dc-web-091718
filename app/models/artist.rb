class Artist

  attr_reader :name, :years_active
@@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end
#get all paintings by a specific artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

#get a list of all galleries that
#a specific artist has paintings in
  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

#get list of all cities that contain galleries that
#a specific artist has paintings in
  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

#find average years of experience of all artists
  def self.average_years
    all_years = self.all.map do |artist|
      artist.years_active
    end
    all_years.inject(:+) / self.all.count
  end

















end
