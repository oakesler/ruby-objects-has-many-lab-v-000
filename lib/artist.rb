require "pry"

class Artist 
  attr_accessor :name, :song, :artist, :title

  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def add_song(song)
    #binding.pry
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end
  
  def songs
    @songs
  end
  
  def self.song_count
    Artist.songs.count
  end
end