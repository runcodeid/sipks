require "application_system_test_case"

class BTwelvesTest < ApplicationSystemTestCase
  setup do
    @b_twelf = b_twelves(:one)
  end

  test "visiting the index" do
    visit b_twelves_url
    assert_selector "h1", text: "B Twelves"
  end

  test "creating a B twelf" do
    visit b_twelves_url
    click_on "New B Twelf"

    fill_in "Action plan", with: @b_twelf.action_plan_id
    click_on "Create B twelf"

    assert_text "B twelf was successfully created"
    click_on "Back"
  end

  test "updating a B twelf" do
    visit b_twelves_url
    click_on "Edit", match: :first

    fill_in "Action plan", with: @b_twelf.action_plan_id
    click_on "Update B twelf"

    assert_text "B twelf was successfully updated"
    click_on "Back"
  end

  test "destroying a B twelf" do
    visit b_twelves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B twelf was successfully destroyed"
  end
end
