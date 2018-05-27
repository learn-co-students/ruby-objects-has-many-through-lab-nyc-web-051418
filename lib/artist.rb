require 'pry'
require_relative 'song.rb'

class Artist

  attr_accessor :name

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
    Song.all.select do |song|
      song.artist == self
    end
  end

   def genres
     songs.map do |song|
       song.genre
     end
   end
end
