require "application_system_test_case"

class ActionPlansTest < ApplicationSystemTestCase
  setup do
    @action_plan = action_plans(:one)
  end

  test "visiting the index" do
    visit action_plans_url
    assert_selector "h1", text: "Action Plans"
  end

  test "creating a Action plan" do
    visit action_plans_url
    click_on "New Action Plan"

    fill_in "Action plan", with: @action_plan.action_plan
    fill_in "City", with: @action_plan.city_id
    fill_in "Code action plans", with: @action_plan.code_action_plans
    fill_in "Year", with: @action_plan.year_id
    click_on "Create Action plan"

    assert_text "Action plan was successfully created"
    click_on "Back"
  end

  test "updating a Action plan" do
    visit action_plans_url
    click_on "Edit", match: :first

    fill_in "Action plan", with: @action_plan.action_plan
    fill_in "City", with: @action_plan.city_id
    fill_in "Code action plans", with: @action_plan.code_action_plans
    fill_in "Year", with: @action_plan.year_id
    click_on "Update Action plan"

    assert_text "Action plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Action plan" do
    visit action_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Action plan was successfully destroyed"
  end
end
