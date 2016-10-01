require 'feature_helper'

describe 'visiting the homepage', :js => true do
  it 'lists out all posts' do
    # Setup
    post = Post.create(:title => "Post 1")
    post = Post.create(:title => "Post 2")

    # Execution
    visit '/'

    expect(page).to have_content("Post 1")
    expect(page).to have_content("Post 2")
    save_and_open_page
  end
end