class Genre
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song_name, artist_name)
    Song.new(artist_name, song_name, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    genre_songs = songs
    binding.pry
    genre_songs.map do |song|
      song.artist
    end
  end
end
