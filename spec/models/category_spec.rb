require 'spec_helper' 

describe Managr::Category do
  
  describe 'validations' do
    
    it 'requires a name be set' do
      should validate_presence_of(
        :name)
    end
  end
end