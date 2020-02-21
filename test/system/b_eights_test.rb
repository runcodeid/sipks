require "application_system_test_case"

class BEightsTest < ApplicationSystemTestCase
  setup do
    @b_eight = b_eights(:one)
  end

  test "visiting the index" do
    visit b_eights_url
    assert_selector "h1", text: "B Eights"
  end

  test "creating a B eight" do
    visit b_eights_url
    click_on "New B Eight"

    fill_in "Action plan", with: @b_eight.action_plan_id
    click_on "Create B eight"

    assert_text "B eight was successfully created"
    click_on "Back"
  end

  test "updating a B eight" do
    visit b_eights_url
    click_on "Edit", match: :first

    fill_in "Action plan", with: @b_eight.action_plan_id
    click_on "Update B eight"

    assert_text "B eight was successfully updated"
    click_on "Back"
  end

  test "destroying a B eight" do
    visit b_eights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "B eight was successfully destroyed"
  end
end
