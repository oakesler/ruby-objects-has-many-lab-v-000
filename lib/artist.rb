require "pry"

class Artist 
  attr_accessor :name, :song, :artist, :title
  
  @@songs = []
  
  def initialize(name = @name)
    @name = name
    @@songs = []
  end
  
  def add_song(song = @song)
    @song = song
    song.artist = self
    @@songs << @song
  end
  
  def add_song_by_name(title = @title)
    @title = title
    song = Song.new(title)
    add_song(song)
  end
  
  def add_post_by_title(title = @title)
    @title = title
    post = Post.new(title)
    add_post(post)
  end
  
  def songs
    @@songs 
  end
  
  def self.song_count
    @@songs.count
  end
end