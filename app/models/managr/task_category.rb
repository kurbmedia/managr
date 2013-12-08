module Managr
  class TaskCategory < Managr::Category
    has_many :tasks
  end
end