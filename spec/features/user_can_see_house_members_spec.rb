require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit /"
    it "I should be able to select a house from a select field" do
      visit root_path
      click_button "Search For Members"

      expect(current_path).to eq search_path

      expect(page).to eq(21)
      # Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
      # And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
      # ​
      # And for each of the members I should see:
      # - The name of the member
      # - The members role (if it exists)
      # - The house the member belongs to
      # - The Patronus of the member (if it exists)
      # ```
    end
end
