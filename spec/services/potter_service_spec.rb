# /spec/services/potter_service_spec.rb
require 'rails_helper'

describe PotterService do
  context "instance methods" do
    context "#list_characters_by_house_and_in_oof" do
      it "returns member data", :vcr do
        members = PotterService.new.list_characters_by_house_and_in_oof("Gryffindor")
        expect(members).to be_an Array
        member_data = members.first

        expect(members.count).to eq 21
        expect(member_data).to have_key :name
        expect(member_data).to have_key :house
      end
    end
  end
end
