require 'test_helper'

class BTwelvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @b_twelf = b_twelves(:one)
  end

  test "should get index" do
    get b_twelves_url
    assert_response :success
  end

  test "should get new" do
    get new_b_twelf_url
    assert_response :success
  end

  test "should create b_twelf" do
    assert_difference('BTwelf.count') do
      post b_twelves_url, params: { b_twelf: { action_plan_id: @b_twelf.action_plan_id } }
    end

    assert_redirected_to b_twelf_url(BTwelf.last)
  end

  test "should show b_twelf" do
    get b_twelf_url(@b_twelf)
    assert_response :success
  end

  test "should get edit" do
    get edit_b_twelf_url(@b_twelf)
    assert_response :success
  end

  test "should update b_twelf" do
    patch b_twelf_url(@b_twelf), params: { b_twelf: { action_plan_id: @b_twelf.action_plan_id } }
    assert_redirected_to b_twelf_url(@b_twelf)
  end

  test "should destroy b_twelf" do
    assert_difference('BTwelf.count', -1) do
      delete b_twelf_url(@b_twelf)
    end

    assert_redirected_to b_twelves_url
  end
end
