class Author
  attr_accessor :post, :name, :title
  
  @@all = [ ]
  
  def initialize(name = @name)
    @name = name
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
    add_post(title)
  end
  
  def posts 
    @@all
  end
  
  def post_count
    @@all.length 
  end
end