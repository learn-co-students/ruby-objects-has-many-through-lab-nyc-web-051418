class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def add_song(name, artist)
    song = Song.new(name, artist, self)
  end

  def songs
    # iterate over particular genre and collect all songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # iterate over particular genre and collect all artists
    genre_songs = self.songs
    genre_songs.map do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end
end

#
# rap = Genre.new("rap")
# rap.add_song("mars", "lil uzi vert")
#
# binding.pry
# true
