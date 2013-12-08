require 'spec_helper'

describe Managr::ScheduledItem do
  
  describe 'validations' do
    
    it 'requires a name be set' do
      should validate_presence_of(
        :name)
    end
    
    it 'requires a starts_on date be set' do
      should validate_presence_of(
        :starts_on)
    end
  end
end