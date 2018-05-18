require 'pry'


class Song

    attr_reader :name, :artist, :genre

    ALL = []

    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      ALL << self
    end

    def self.all
      ALL
    end

end
