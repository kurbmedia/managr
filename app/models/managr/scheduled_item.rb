module Managr
  class ScheduledItem < ActiveRecord::Base
    
    validates :name, :starts_on, presence: true
  end
end
    