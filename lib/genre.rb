class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.all.select {|song| song.genre == self}.map {|song| song.artist}
  end
end
