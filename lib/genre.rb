class Genre

  attr_accessor :name, :artists

  def initialize(name)
    @name = name
    # @songs = []
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end
end
