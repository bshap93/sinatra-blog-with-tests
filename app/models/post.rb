class Post
  attr_accessor :title
  def author=(author)
    raise TypeError, "An instance of Author was expected" if !author.is_a?(Author)

    @author = author
  end

  def author
    @author
  end

  def author_name
    self.author.name
  end
end
