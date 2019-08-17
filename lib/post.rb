class Post
  attr_accessor :title, :author 
  
  @@all = [ ]
  
  def initialize(title = @title, author = nil)
    @title = title 
    @author = author
  end
  
  def author_name(author = @author)
    @author = author
    if author == nil 
      return nil 
    else 
      author.name
    end
  end
end