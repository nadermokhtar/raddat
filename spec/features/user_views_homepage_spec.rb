require "rails_helper"

RSpec.feature "User views homepage" do
  scenario "they see existing hookups" do
    # hookup_title = "This Testing Rails book is awsome!"
    # hookup_url = "http://testingrailsbook.com"
    #
    # visit root_path
    # click_on "Submit a new hookup"
    # fill_in "hookup_title", with: hookup_title
    # fill_in "hookup_url", with: hookup_url
    # click_on "Submit"


hookup = create(:hookup)
    visit root_path
    expect(page).to have_link hookup.title, href: hookup.url
  end
end


# As a user
# Given a link has already been submitted
# When I visit the home page
# Then I should see the link's title on the page And it should link to the correct URL
