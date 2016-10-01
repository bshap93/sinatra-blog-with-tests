class Author < ActiveRecord::Base
  has_many :posts

  # attr_accessor :name 

  # def initialize
  #   @posts = []
  # end

  # def posts=(posts)
  #   @posts = posts
  # end

  # def posts
  #   @posts
  # end

  def post_titles
    self.posts.collect{|post| post.title}
  end
end