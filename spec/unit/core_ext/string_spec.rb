require 'spec_helper'

describe String do
  
  describe '.to_bool' do
  
    ["false", "0"].each do |val|

      it "coerces #{val.inspect} to false" do
        val.to_bool
          .should be_a(FalseClass)
        val.to_bool.should eq false
      end
    
    end
  
    ["true", "1"].each do |val|

      it "coerces #{val.inspect} to true" do
        val.to_bool
          .should be_a(TrueClass)
        val.to_bool.should eq true
      end
    end
  end
end