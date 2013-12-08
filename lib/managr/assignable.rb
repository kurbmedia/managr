module Managr
  ##
  # Configures models to support assignment to one or more users.
  # 
  module Assignable
    extend ActiveSupport::Concern
    
    included do
      has_many :assignments, as: :assignable
      has_many :users, through: :assignments
      
      scope :assigned_to, lambda{ |user| 
        joins(:assignments).where(managr_assignments: { user_id: [user].flatten.collect(&:id) })
      }
    end
  end
end