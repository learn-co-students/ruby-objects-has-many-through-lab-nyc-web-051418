class Song
  @@all = []
  attr_accessor :name, :artist, :genre
  def initialize(song_name, artist, song_genre)
    @name = song_name
    @artist = artist
    @genre = song_genre
    @@all << self
  end

  def self.all
    @@all
  end
end
