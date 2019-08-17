require 'rails_helper'

RSpec.describe Organization, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:brands) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
