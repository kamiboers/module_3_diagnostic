require 'rails_helper'

RSpec.describe "search" do
  it "searches for a zip code and displays station information" do
    visit "/"
    fill_in 'zip', with: "80203"
    click_on "Locate"

    expect(current_path).to eq("/search?zip=80203")
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    expect(page).to have_content("Station Name")
    expect(page).to have_content("Station Address")
    expect(page).to have_content("Other Data")
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