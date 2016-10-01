require 'spec_helper'
require 'capybara'
require 'capybara/dsl'

Capybara.app = ApplicationController

RSpec.configure do |config|
  config.include Capybara::DSL
end