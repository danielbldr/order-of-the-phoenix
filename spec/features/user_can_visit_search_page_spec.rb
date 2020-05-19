require 'rails_helper'

RSpec.describe 'as a user when I select Gryffindor and click Search for Members', type: :feature do
  describe 'I should see the total number of order of the phoenix member that belong to Gryffindor' do
    it 'and I should wee detailed information for the 21 members' do
      visit '/'
      find(:select, "house").first(:option, 'Gryffindor').select_option
      click_button 'Search For Members'
      expect(current_path).to eq(search_path)
      expect(page).to have_selector('.Gryffindor-characters', count: 21)
      within ('#Sirius') do
        expect(page).to have_content('Name: Sirius Black')
        expect(page).to have_content('Role: Role Unknown')
        expect(page).to have_content('House: Gryffindor')
        expect(page).to have_content('Patronus: Patronus Unknown')
      end

      within ('#Aberforth') do
        expect(page).to have_content('Name: Aberforth Dumbledore')
        expect(page).to have_content("Role: Owner, Hog's Head Inn")
        expect(page).to have_content('House: Gryffindor')
        expect(page).to have_content('Goat')
      end
    end
  end
end


# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# ​
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
