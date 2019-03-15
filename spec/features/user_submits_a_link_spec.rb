require "rails_helper"

RSpec.feature "User submits a hookup" do
  scenario "they see the page for the submitted hookup" do
    hookup_title = "This Testing Rails book is awsome!"
    hookup_url = "http://testingrailsbook.com"

    visit root_path
    click_on "Submit a new hookup"
    fill_in "hookup_title", with: hookup_title
    fill_in "hookup_url", with: hookup_url
    click_on "Submit"

    expect(page).to have_link hookup_title, href: hookup_url
  end
end
