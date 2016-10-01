require 'spec_helper'

describe Author do
  it 'exists' do
    expect(Author).to be_truthy
  end
  
  it 'have a name' do
    # Setup
    author = Author.new
     
    # Do Something
    author.name = "Ernest Hemingway"

    # Assertion / Expectation
    expect(author.name).to eq("Ernest Hemingway")
  end

  context '#posts' do
    it 'has no posts upon initialization' do
      # Setup
      author = Author.new

      # Expectation
      expect(author.posts).to eq([])
    end

    it 'can be assigned many posts' do
      author = Author.new
      p1 = Post.new
      p2 = Post.new

      author.posts = [p1, p2]

      expect(author.posts).to match_array([p1, p2])
    end
  end

  context '#post_titles' do
    it 'returns an array of post titles' do
      author = Author.new
      p1 = Post.new.tap{|p| p.title = "Title 1"}
      p2 = Post.new.tap{|p| p.title = "Title 2"}

      author.posts = [p1, p2]

      expect(author.post_titles).to match_array(["Title 1","Title 2"])
    end
  end
end
