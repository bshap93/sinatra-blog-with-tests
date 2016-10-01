require 'spec_helper'

require 'spec_helper'

describe Post do
  it 'exists' do
    expect(Post).to be_truthy
  end
  
  it 'have a title' do
    # Setup
    post = Post.new
     
    # Do Something
    post.title = "The Sun Also Rises"

    # Assertion / Expectation
    expect(post.title).to eq("The Sun Also Rises")
  end

  context 'authors' do
    it 'can have an author' do
      # Setup
      post = Post.new
      post.title = "The Sun Also Rises"

      author = Author.new
      author.name = "Ernest Hemingway"

      # Do Something
      post.author = author

      # Assertion / Expectation
      expect(post.author.name).to eq("Ernest Hemingway")
    end

    context '#author=' do
      it 'raises a TypeError when assigned anything besides an Author' do
        # Setup
        post = Post.new

        # Do Something
        expect{
          post.author = "I AM A STRING"
        }.to raise_error(ActiveRecord::AssociationTypeMismatch)
      end

      it 'reciprocates itself to the authors posts collection' do
        a1 = Author.new
        p1 = Post.new

        p1.author = a1
        p1.save
        
        expect(a1.posts).to include(p1)
      end
    end      
  end

  context '#author_name' do
    it 'returns the name of the author' do
      # Setup
      post = Post.new
      post.title = "The Sun Also Rises"

      author = Author.new
      author.name = "Ernest Hemingway"
      
      post.author = author

      expect(post.author_name).to eq("Ernest Hemingway")          
    end
  end

end