require 'test_helper'

class BFoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_four = b_fours(:one)
  end

  test "should get index" do
    get b_fours_url
    assert_response :success
  end

  test "should get new" do
    get new_b_four_url
    assert_response :success
  end

  test "should create b_four" do
    assert_difference('BFour.count') do
      post b_fours_url, params: { b_four: { action_plan_id: @b_four.action_plan_id } }
    end

    assert_redirected_to b_four_url(BFour.last)
  end

  test "should show b_four" do
    get b_four_url(@b_four)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_four_url(@b_four)
    assert_response :success
  end

  test "should update b_four" do
    patch b_four_url(@b_four), params: { b_four: { action_plan_id: @b_four.action_plan_id } }
    assert_redirected_to b_four_url(@b_four)
  end

  test "should destroy b_four" do
    assert_difference('BFour.count', -1) do
      delete b_four_url(@b_four)
    end

    assert_redirected_to b_fours_url
  end
end
