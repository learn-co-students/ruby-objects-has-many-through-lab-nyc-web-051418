class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def new_song(song)
    self.songs << song
  end

  def songs
    # find all songs for a particular genre
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    # return all of this genres artists
    songs.map do |song|
      song.artist
    end
  end
end
