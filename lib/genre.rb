require 'pry'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    self.all.artist
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map{|x| x.artist}
  end

  def new_song(name, artist)
    Song.new(name, artist, genre)
  end

end
