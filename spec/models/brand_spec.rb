require 'rails_helper'

RSpec.describe Brand, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:productlines) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
