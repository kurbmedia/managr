require 'spec_helper' 

describe Managr::Preference do
  
  describe 'validations' do
    
    it 'requires a key be set' do
      should validate_presence_of(
        :key)
    end
    
    it 'requires a value be set' do
      should validate_presence_of(
        :value)
    end
    
    it 'requires a value_type be set' do
      should validate_presence_of(
        :value_type)
    end
  end
  
  describe '.value' do
    
    let!(:pref) do
      Managr::Preference.make(
        value: 'false',
        value_type: 'boolean'
      )
    end
    
    it 'coerces the string value to its proper format' do
      pref.value
        .should be_a(FalseClass)
    end
  end
end