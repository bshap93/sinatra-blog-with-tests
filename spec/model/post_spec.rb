require 'spec_helper'

describe Post do
  it 'exists' do
    expect(Post).to be_truthy
  end
  it 'have a title' do
    #setup
    post = Post.new
    #do something
    post.title = "The Sun Also Rises"
    #assertion
    expect(post.title).to eq("The Sun Also Rises")
  end
  it 'can have an author' do
    #setup
    post = Post.new
    #do something
    post.title = "The Sun Also Rises"
    author = Author.new
    author.name = "Ernest Hemingway"
    post.author = author
    #assertion
    expect(post.author.name).to eq("Ernest Hemingway")
  end

  context "#author=" do
    it 'raise a TypeError when assigned to anything beside an author' do
      post = Post.new


      expect {
        post.author = "I AM A STING"
      }.to raise_error(TypeError)
    end
  end

  context '#author_name' do
    it 'returns the name fo the author' do
      post = Post.new
      post.title = "The Sun Also Rises"

      author = Author.new
      author.name = "Ernest Hemingway"
      post.author = author

      expect(post.author_name).to eq("Ernest Hemingway")
    end
  end
end
