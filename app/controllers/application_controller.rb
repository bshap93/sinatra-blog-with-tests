class ApplicationController < Sinatra::Base
  get '/' do
    @posts = Post.all
    erb :"posts/index.html"
  end
  
end