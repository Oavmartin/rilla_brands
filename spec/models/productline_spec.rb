require 'rails_helper'

RSpec.describe Productline, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:brand) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
