require 'test_helper'

class Dashboard::CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_city = dashboard_cities(:one)
  end

  test "should get index" do
    get dashboard_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_city_url
    assert_response :success
  end

  test "should create dashboard_city" do
    assert_difference('Dashboard::City.count') do
      post dashboard_cities_url, params: { dashboard_city: {  } }
    end

    assert_redirected_to dashboard_city_url(Dashboard::City.last)
  end

  test "should show dashboard_city" do
    get dashboard_city_url(@dashboard_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_city_url(@dashboard_city)
    assert_response :success
  end

  test "should update dashboard_city" do
    patch dashboard_city_url(@dashboard_city), params: { dashboard_city: {  } }
    assert_redirected_to dashboard_city_url(@dashboard_city)
  end

  test "should destroy dashboard_city" do
    assert_difference('Dashboard::City.count', -1) do
      delete dashboard_city_url(@dashboard_city)
    end

    assert_redirected_to dashboard_cities_url
  end
end
