require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit /"
    it "I should be able to select a house from a select field" do
      visit root_path
      click_button "Search For Members"

      expect(current_path).to eq search_path

      within('.total-members') do
        expect(page).to have_content "21"
      end

      within('.members') do
        expect(page.all('li')[0]).to have_content("Sirius Black")
        expect(page.all('li')[1]).to have_content("House: Gryffindor")
        expect(page.all('li')[0]).to_not have_content("Role:")
        expect(page.all('li')[0]).to_not have_content("Patronus:")
      end
      within('.members') do
        expect(page.all('li')[2]).to have_content("Aberforth Dumbledore")
        expect(page.all('li')[3]).to have_content("Role: Owner, Hog's Head Inn")
        expect(page.all('li')[4]).to have_content("House: Gryffindor")
        expect(page.all('li')[5]).to have_content("Patronus: Goat")
      end

      visit root_path
      select "Slytherin"
      click_button "Search For Members"

      expect(current_path).to eq search_path

      within('.total-members') do
        expect(page).to have_content "1"
      end

      within('.members') do
        expect(page.all('li')[0]).to have_content("Severus Snape")
        expect(page.all('li')[1]).to have_content("Role: Professor, Potions")
        expect(page.all('li')[2]).to have_content("House: Slytherin")
        expect(page.all('li')[3]).to have_content("Patronus: Doe")
      end
    end
end
