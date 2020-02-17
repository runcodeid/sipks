require "application_system_test_case"

class BFoursTest < ApplicationSystemTestCase
  setup do
    @b_four = b_fours(:one)
  end

  test "visiting the index" do
    visit b_fours_url
    assert_selector "h1", text: "B Fours"
  end

  test "creating a B four" do
    visit b_fours_url
    click_on "New B Four"

    fill_in "Action plan", with: @b_four.action_plan_id
    click_on "Create B four"

    assert_text "B four was successfully created"
    click_on "Back"
  end

  test "updating a B four" do
    visit b_fours_url
    click_on "Edit", match: :first

    fill_in "Action plan", with: @b_four.action_plan_id
    click_on "Update B four"

    assert_text "B four was successfully updated"
    click_on "Back"
  end

  test "destroying a B four" do
    visit b_fours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B four was successfully destroyed"
  end
end
