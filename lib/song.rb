require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name = nil, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
  end

  def artist_name
    self.artist ? self.artist.name : nil 
  end


end
