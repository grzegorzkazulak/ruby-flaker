module Flaker
  class ObjectWrapper < Base
    
    attr_writer :data
    
    def initialize(hash)
      @data = hash
    end
    
    def method_missing(method_name)
      @data[method_name.to_s] unless @data.class == 'Hash'
    end
  end
end