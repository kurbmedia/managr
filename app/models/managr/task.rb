module Managr
  class Task < ActiveRecord::Base
    
    belongs_to :category, class_name: "Managr::TaskCategory"
    validates :title, presence: true
  end
end
