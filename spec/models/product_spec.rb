require 'rails_helper'

RSpec.describe Product, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:productline) }

    it { should have_many(:productvariants) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
