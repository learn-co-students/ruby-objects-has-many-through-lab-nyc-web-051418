require 'pry'
class Genre

    attr_reader :name

    ALL = []

    def initialize(name)
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def new_song (name, artist)
        Song.new(name, self, artist)
    end

    def songs #returns array of instances
      Song.all.select do |song|
      # binding.pry
        song.genre == self
      end
    #  binding.pry
    end


    def artists
      songs.map do |song|
         song.artist
      end
    end

end
