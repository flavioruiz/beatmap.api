$:.unshift(File.join(File.dirname(__FILE__), ".."))

require 'rubygems'
require 'wrong'
require 'rspec'
require 'rspec/mocks'
require 'mocha'
require 'lib/beatmap'

RSpec.configure do |config|
  config.mock_with :mocha
end
