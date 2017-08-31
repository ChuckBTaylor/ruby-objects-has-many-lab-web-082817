require 'pry'

class Artist

  attr_accessor :name, :genre
  @@song_count = 0


  def initialize(name = "unknown", genre = "unknown")
    @name = name
    @genre = genre
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(made_song)
    @songs << made_song
    made_song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(new_song)
    song = Song.new(new_song)
    song.artist = self
    @songs << song
    @@song_count+=1
  end

  def self.song_count
    @@song_count
  end



end
