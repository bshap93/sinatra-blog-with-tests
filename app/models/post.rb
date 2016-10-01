class Post < ActiveRecord::Base
  belongs_to :author
  # attr_accessor :title

  # def author=(author)
  #   raise TypeError, "an instance of Author was expected" if !author.is_a?(Author)

  #   @author = author
  #   # somehow we need to tell the author, hey, you have a new post, me!!!
  #   @author.posts << self
  # end

  # def author
  #   @author
  # end

  def author_name
    self.author.name
  end

end
