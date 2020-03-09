require 'test_helper'

class Dashboard::YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_year = dashboard_years(:one)
  end

  test "should get index" do
    get dashboard_years_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_year_url
    assert_response :success
  end

  test "should create dashboard_year" do
    assert_difference('Dashboard::Year.count') do
      post dashboard_years_url, params: { dashboard_year: {  } }
    end

    assert_redirected_to dashboard_year_url(Dashboard::Year.last)
  end

  test "should show dashboard_year" do
    get dashboard_year_url(@dashboard_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_year_url(@dashboard_year)
    assert_response :success
  end

  test "should update dashboard_year" do
    patch dashboard_year_url(@dashboard_year), params: { dashboard_year: {  } }
    assert_redirected_to dashboard_year_url(@dashboard_year)
  end

  test "should destroy dashboard_year" do
    assert_difference('Dashboard::Year.count', -1) do
      delete dashboard_year_url(@dashboard_year)
    end

    assert_redirected_to dashboard_years_url
  end
end
