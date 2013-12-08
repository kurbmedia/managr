module Managr
  class Task < ActiveRecord::Base
    
    include Managr::Taggable
    include Managr::Assignable
    include Managr::Scheduling
    
    belongs_to :category, class_name: "Managr::TaskCategory"
    belongs_to :creator,  class_name: "Managr::User"
    
    validates :title, presence: true
  end
end
