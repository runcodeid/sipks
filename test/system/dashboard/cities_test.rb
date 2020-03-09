require "application_system_test_case"

class Dashboard::CitiesTest < ApplicationSystemTestCase
  setup do
    @dashboard_city = dashboard_cities(:one)
  end

  test "visiting the index" do
    visit dashboard_cities_url
    assert_selector "h1", text: "Dashboard/Cities"
  end

  test "creating a City" do
    visit dashboard_cities_url
    click_on "New Dashboard/City"

    click_on "Create City"

    assert_text "City was successfully created"
    click_on "Back"
  end

  test "updating a City" do
    visit dashboard_cities_url
    click_on "Edit", match: :first

    click_on "Update City"

    assert_text "City was successfully updated"
    click_on "Back"
  end

  test "destroying a City" do
    visit dashboard_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City was successfully destroyed"
  end
end
