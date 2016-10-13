require 'spec_helper'

describe Author do
  it 'exists' do
    expect(Author).to be_truthy
  end
  it 'have a name' do
    #setup
    author = Author.new
    #do something
    author.name = "Ernest Hemingway"
    #assertion
    expect(author.name).to eq("Ernest Hemingway")
  end

  context "#posts " do
    it 'has no posts upon initializaiton' do
      #setup
      author = Author.new
      #execution
      #expectation
      expect(author.posts).to be_empty
    end
  end
end
