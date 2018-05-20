class Artist
  attr_accessor :name, :songs, :genres

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Song.all.select {|song| song.artist == self}.map {|song| song.genre}
  end
end
