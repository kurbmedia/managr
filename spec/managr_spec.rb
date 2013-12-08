require 'spec_helper'

describe Managr do
  
  it 'should be a module' do
    Managr.should be_a(Module)
  end
  
  it 'provides a method to setup default preferences' do
    Managr.respond_to?(:create_defaults!)
      .should be_true
  end
  
  describe '#pref' do
    
    context 'when a saved preference does not exist' do
      
      context 'and a fallback is provided' do
        
        it 'returns the fallback value' do
          Managr.pref('missing', true)
            .should eq true
        end
      end
      
      context 'and no fallback is provided' do
        
        it 'returns nil' do
          Managr.pref('blah')
            .should be_nil
        end
      end
    end
    
    context 'when a saved preference exists' do
      
      let!(:pref) do
        Managr::Preference.make!(
          key: 'test_pref',
          value: "true",
          value_type: "boolean"
        )
      end
      
      it 'returns the stored value' do
        Managr.pref('test_pref')
          .should eq true
      end
    end
    
  end
end