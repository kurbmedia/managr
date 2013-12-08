module Managr
  class Category < ActiveRecord::Base
    
    validate :name, presence: true
  end
end