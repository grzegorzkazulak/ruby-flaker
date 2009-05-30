require 'rubygems'

gem 'httparty', '0.4.3'
require 'httparty'

module Flaker
  VERSION = '0.0.1'
  
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