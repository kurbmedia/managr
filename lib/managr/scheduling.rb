module Managr
  ##
  # Adds support for scheduling items for one or more 
  # days and times.
  # 
  module Scheduling
    extend ActiveSupport::Concern
    
    included do
      has_many :schedules, class_name: "Managr::ScheduledItem", as: :item
    end
  end
end