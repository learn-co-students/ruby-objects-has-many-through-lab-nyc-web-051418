require 'pry'
class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, song_genre)
    Song.new(song_name, self, song_genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.all
    @@all
  end

  def genres
    song_list = songs
    song_list.map do |song|
      song.genre
    end
  end
end
