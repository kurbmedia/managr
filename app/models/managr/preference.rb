module Managr
  class Preference < ActiveRecord::Base
    validates :key, :value, :value_type, presence: true
    validates :key, uniqueness: true
    
    
    ##
    # Override getter for value to coerce the stored 
    # value into its proper format.
    # 
    def value
      proper_value
    end
    
    
    private
    
    def proper_value
      base    = read_attribute('value')
      return nil unless base
      mapping = {
        "boolean" => :to_bool,
        "string"  => :to_s,
        "integer" => :to_i,
        "decimal" => :to_f,
        "class"   => :constantize
       }
      base.send(mapping[value_type])
    end
  end
end
