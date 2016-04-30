require 'test_helper'

class LiabilitiesControllerTest < ActionController::TestCase
  setup do
    @liability = liabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liability" do
    assert_difference('Liability.count') do
      post :create, liability: { bank_name: @liability.bank_name, family_id: @liability.family_id, interest_rate: @liability.interest_rate, nickname: @liability.nickname, starting_balance: @liability.starting_balance, user_id: @liability.user_id }
    end

    assert_redirected_to liability_path(assigns(:liability))
  end

  test "should show liability" do
    get :show, id: @liability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liability
    assert_response :success
  end

  test "should update liability" do
    patch :update, id: @liability, liability: { bank_name: @liability.bank_name, family_id: @liability.family_id, interest_rate: @liability.interest_rate, nickname: @liability.nickname, starting_balance: @liability.starting_balance, user_id: @liability.user_id }
    assert_redirected_to liability_path(assigns(:liability))
  end

  test "should destroy liability" do
    assert_difference('Liability.count', -1) do
      delete :destroy, id: @liability
    end

    assert_redirected_to liabilities_path
  end
end
