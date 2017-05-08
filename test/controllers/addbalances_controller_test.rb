require 'test_helper'

class AddbalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addbalance = addbalances(:one)
  end

  test "should get index" do
    get addbalances_url
    assert_response :success
  end

  test "should get new" do
    get new_addbalance_url
    assert_response :success
  end

  test "should create addbalance" do
    assert_difference('Addbalance.count') do
      post addbalances_url, params: { addbalance: { amount: @addbalance.amount, user_id: @addbalance.user_id } }
    end

    assert_redirected_to addbalance_url(Addbalance.last)
  end

  test "should show addbalance" do
    get addbalance_url(@addbalance)
    assert_response :success
  end

  test "should get edit" do
    get edit_addbalance_url(@addbalance)
    assert_response :success
  end

  test "should update addbalance" do
    patch addbalance_url(@addbalance), params: { addbalance: { amount: @addbalance.amount, user_id: @addbalance.user_id } }
    assert_redirected_to addbalance_url(@addbalance)
  end

  test "should destroy addbalance" do
    assert_difference('Addbalance.count', -1) do
      delete addbalance_url(@addbalance)
    end

    assert_redirected_to addbalances_url
  end
end
