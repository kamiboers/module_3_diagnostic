require 'rails_helper'

RSpec.describe "search" do
  it "searches for a zip code and displays station information" do
    visit "/"
    fill_in 'zip', with: "80203"
    click_on "Locate"

    # expect(current_path).to eq("/search?zip=80203")

    expect(page).to have_content("Hyatt Regency Denver")
    expect(page).to have_content("Fuel Type: ELEC")
    expect(page).to have_content("Address: 650 15th St")
    expect(page).to have_content("Access Time: 24 hours daily")
    expect(page).to have_content("Distance: 1.03475")
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times