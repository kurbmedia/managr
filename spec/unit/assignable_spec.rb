require 'spec_helper'

describe Managr::Assignable do
  
  let!(:task) do
    Managr::Task.make!
  end
  
  describe 'associations' do
    
    it 'has many assignments' do
      task.should have_many(
        :assignments)
    end
    
    it 'has many users through assignments' do
      task.should have_many(
        :users).through(:assignments)
    end
  end
  
  describe 'assigned_to scope' do
    
    let!(:user) do
      Managr::User.make!
    end
    
    let!(:user2) do
      Managr::User.make!
    end
    
    before do
      task.users << user
    end
    
    it 'finds records assigned to the passed user(s)' do
      Managr::Task.assigned_to(user)
        .should include(task)
    end
    
    it 'does not find records with no assignment to the passed user(s)' do
      Managr::Task.assigned_to(user2)
        .count.should eq 0
    end
  end

end