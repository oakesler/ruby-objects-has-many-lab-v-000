require "pry"
class Author
  attr_accessor :post, :name, :title
  
  @@all = [ ]
  
  def initialize(name = @name)
    @name = name
    #@all = []
  end
  
  def name
    @name
  end
  
  def add_post(post = @post)
    @post = post
    post.author = self
    @@all << post
  end
  
  def add_post_by_title(title = @title)
    @title = title
    post = Post.new(title)
    add_post(post)
  end
  
  def posts
    @@all
  end
  
  def self.post_count
    @@count
  end
end


  def self.song_count
    @@count
  end
end