require 'spec_helper'

describe Managr::Assignment do
  
  describe 'associations' do
    
    it 'belongs to an assignable item' do
      should belong_to(
        :assignable)
    end
    
    it 'belongs to a user' do
      should belong_to(
        :user)
    end
  end
end