module Flaker
  class Base
    include HTTParty
    
    # Initializes the object.
    # Takes username and password as arguments
    def initialize(user = nil, password = nil)
      if user && password
        self.class.basic_auth user, password
      else
        return false
      end
    end
    
    def fetch(param, options = {})
      Flaker::ObjectWrapper.new(self.class.get(Flaker::API_PATH + param))
    end
    
  end
end