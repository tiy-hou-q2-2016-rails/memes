require "test_helper"

class CanSignInTest < Capybara::Rails::TestCase

  test "Should not let me see private page" do
    visit root_path
    click_link "Private"
    assert_content page, "Please Sign In"
  end

  test "If I am not signed in, I want a sign in link" do
    visit root_path
    assert_content page, "Sign In"
  end

  test "If I am signed in, I want do not want sign in, I want sign out" do
    visit root_path
    click_link "Sign In"
    @user = User.create! username: "bob", password: "12345678"
    fill_in "Username", with: "bob"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    refute_content page, "Sign In"
    assert_content page, "Sign Out"

    click_link "Sign Out"
    assert_content page, "Sign In"

  end


  test "Can sign in" do
    @user = User.create! username: "bob", password: "12345678"
    visit root_path
    click_link "Private"

    fill_in "Username", with: "bob"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    visit root_path
    click_link "Private"
    assert_content page, "Such private content"


  end

end
