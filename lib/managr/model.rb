module Managr
  
  ##
  # All models include this module to unify 
  # functionality across various resource types.
  # 
  module Model
    extend ActiveSupport::Concern
    
    included do
      Managr.manage(self) # Register this class 
    end
  end
end