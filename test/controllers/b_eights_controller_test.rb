require 'test_helper'

class BEightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_eight = b_eights(:one)
  end

  test "should get index" do
    get b_eights_url
    assert_response :success
  end

  test "should get new" do
    get new_b_eight_url
    assert_response :success
  end

  test "should create b_eight" do
    assert_difference('BEight.count') do
      post b_eights_url, params: { b_eight: { action_plan_id: @b_eight.action_plan_id } }
    end

    assert_redirected_to b_eight_url(BEight.last)
  end

  test "should show b_eight" do
    get b_eight_url(@b_eight)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_eight_url(@b_eight)
    assert_response :success
  end

  test "should update b_eight" do
    patch b_eight_url(@b_eight), params: { b_eight: { action_plan_id: @b_eight.action_plan_id } }
    assert_redirected_to b_eight_url(@b_eight)
  end

  test "should destroy b_eight" do
    assert_difference('BEight.count', -1) do
      delete b_eight_url(@b_eight)
    end

    assert_redirected_to b_eights_url
  end
end
