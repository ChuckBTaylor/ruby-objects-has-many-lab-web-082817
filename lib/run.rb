require_relative "post.rb"
require_relative "author.rb"
require_relative "song.rb"
require_relative "artist.rb"
require 'pry'


wee = Song.new("Ho boy!")
binding.pry

wee.artist
