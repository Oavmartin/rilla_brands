require 'rails_helper'

RSpec.describe Productvariant, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:product) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
