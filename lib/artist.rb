require "pry"

class Artist 
  attr_accessor :name, :song, :artist, :title
  
  @@songs = []
  
  def initialize(name = @name)
    @name = name
    #@@songs = []
  end
  
  def add_song(song = @song)
    @song = song
    song.artist = self
    @@songs << @song
  end
  
  def add_song_by_name(title = @title)
    @title = title
    add_song(self)
  end
  
  def songs
    @@songs 
  end
  
  def song_count
    @@songs.count
  end
  
  #def name 
    #artist.name = self
  #end
end