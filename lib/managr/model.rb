module Managr
  
  ##
  # All models include this module to unify 
  # functionality across various resource types.
  # 
  module Model
    extend ActiveSupport::Concern
    
    included do
      
      # Register this class 
      Managr.add_model(self)
    end
    
  end
end