require './config/environment'

task :console do
  Pry.start
end

require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require './config/environment'
  end
end