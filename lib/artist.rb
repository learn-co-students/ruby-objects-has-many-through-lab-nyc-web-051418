require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    ## iterate through and find all songs that belong to artist
    Song.all.select do |songs|
      songs.artist == self
    end
  end

  def genres
    ## iterate through artist's songs and find all of its genres
    artist_songs = self.songs
    artist_songs.map do |song|
      song.genre
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end

# uzi = Artist.new("Lil Uzi Vert")
# drive = uzi.new_song("I can drive", "rap")
# mars = uzi.new_song("Mars","rap")
# binding.pry
# true
