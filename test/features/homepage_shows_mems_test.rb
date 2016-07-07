require "test_helper"

class HomepageShowsMemsTest < Capybara::Rails::TestCase
  test "Homepage Sanity Test" do
    visit root_path
    assert_content page, "Memes"
  end
end
