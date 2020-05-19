# spec/models/potter_spec.rb
require "rails_helper"

describe Potter do
  it "#list_house_members_in_oof" do
    members = Potter.list_house_members_in_oof("Gryffindor")
    member_data = members.first

    expect(member_data).to have_attributes(name: 'Sirius Black')
    expect(member_data).to have_attributes(role: nil)
    expect(member_data).to have_attributes(house: 'Gryffindor')
    expect(member_data).to have_attributes(patronus: nil)
  end
end
