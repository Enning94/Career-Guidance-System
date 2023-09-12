require "application_system_test_case"

class UserCareersTest < ApplicationSystemTestCase
  setup do
    @user_career = user_careers(:one)
  end

  test "visiting the index" do
    visit user_careers_url
    assert_selector "h1", text: "User careers"
  end

  test "should create user career" do
    visit user_careers_url
    click_on "New user career"

    fill_in "Career", with: @user_career.career_id
    fill_in "Score", with: @user_career.score
    fill_in "User", with: @user_career.user_id
    click_on "Create User career"

    assert_text "User career was successfully created"
    click_on "Back"
  end

  test "should update User career" do
    visit user_career_url(@user_career)
    click_on "Edit this user career", match: :first

    fill_in "Career", with: @user_career.career_id
    fill_in "Score", with: @user_career.score
    fill_in "User", with: @user_career.user_id
    click_on "Update User career"

    assert_text "User career was successfully updated"
    click_on "Back"
  end

  test "should destroy User career" do
    visit user_career_url(@user_career)
    click_on "Destroy this user career", match: :first

    assert_text "User career was successfully destroyed"
  end
end
