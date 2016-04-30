require 'test_helper'

class EquitiesControllerTest < ActionController::TestCase
  setup do
    @equity = equities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equity" do
    assert_difference('Equity.count') do
      post :create, equity: { bank_name: @equity.bank_name, family_id: @equity.family_id, nickname: @equity.nickname, starting_balance: @equity.starting_balance, user_id: @equity.user_id }
    end

    assert_redirected_to equity_path(assigns(:equity))
  end

  test "should show equity" do
    get :show, id: @equity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equity
    assert_response :success
  end

  test "should update equity" do
    patch :update, id: @equity, equity: { bank_name: @equity.bank_name, family_id: @equity.family_id, nickname: @equity.nickname, starting_balance: @equity.starting_balance, user_id: @equity.user_id }
    assert_redirected_to equity_path(assigns(:equity))
  end

  test "should destroy equity" do
    assert_difference('Equity.count', -1) do
      delete :destroy, id: @equity
    end

    assert_redirected_to equities_path
  end
end
