module Managr
  class TaskCategory < Category
    has_many :tasks
  end
end