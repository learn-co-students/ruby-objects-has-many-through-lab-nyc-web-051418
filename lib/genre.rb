require 'pry'
require_relative 'song.rb'

class Genre

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def songs
     Song.all.select do |song|
      song.genre == self
     end
   end

  def artists
    songs.map do |song|
      song.artist
    end
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end
end
