require 'spec_helper'

describe Managr::Task do
  
  describe 'validations' do
    
    it 'requires a title be set' do
      should validate_presence_of(
        :title)
    end
  end
  
  describe 'associations' do
    
    it 'belongs to a category' do
      should belong_to(
        :category)
    end
    
    it 'belongs to a creator' do
      should belong_to(
        :creator)
    end
  end
end