require 'rubygems'

gem 'httparty', '0.4.3'
require 'httparty'

module Flaker
  VERSION   = '0.0.1'
  API_PATH  = 'http://api.flaker.pl/api/'
  
  class FlakerError < StandardError
    attr_reader :date
    
    def initialize(data)
      @data = data
      super
    end
  end
  
  class GeneralError      < FlakerError; end
  class NotFoundError     < FlakerError; end
  class UnauthorizedError < FlakerError; end
  class Unavailable       < FlakerError; end
  
end

root = File.expand_path(File.dirname(__FILE__))
require File.join(root, 'flaker', 'base')
require File.join(root, 'flaker', 'wrapper')