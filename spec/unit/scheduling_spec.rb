require 'spec_helper'

describe Managr::Scheduling do
  
  let!(:task) do
    Managr::Task.make
  end
  
  it 'adds a schedules relationship' do
    task.should have_many(
      :schedules)
  end
end