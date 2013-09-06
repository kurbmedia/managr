require "managr/engine"

module Managr
  extend self
  mattr_accessor :models
  @@models = []
  
  autoload :Model, 'managr/model'
  
  ##
  # Registers a resource for internal use.
  # 
  def add_model(klass)
    @@resources |= [klass]
  end
end
