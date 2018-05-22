require 'pry'
class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |the_song|
      the_song.genre.name == self.name
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
