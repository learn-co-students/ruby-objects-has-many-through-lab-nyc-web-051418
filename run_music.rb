require_relative 'lib/song'
require_relative 'lib/artist'
require_relative 'lib/genre'
require 'pry'

alberto = Artist.new("Alberto")
joshua = Artist.new("Joshua")


shitty_pop = Genre.new("shitty_pop")
awesome_pop = Genre.new("awesome_pop")

chiwchiw = Song.new("chiwchiw", alberto, shitty_pop)
chawchaw = Song.new("chawchaw", joshua, awesome_pop)

mowmow = Song.new("mowmow", alberto, awesome_pop)
miumiu = Song.new("miumiu", joshua, shitty_pop)


Artist.all
Genre.all
Song.all

alberto.genres
joshua.genres
alberto.songs
joshua.songs
shitty_pop.artists
awesome_pop.artists
shitty_pop.songs
awesome_pop.songs

binding.pry
true
