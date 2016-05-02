require 'test_helper'

class ProfitLossStatementsControllerTest < ActionController::TestCase
  setup do
    @profit_loss_statement = profit_loss_statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profit_loss_statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profit_loss_statement" do
    assert_difference('ProfitLossStatement.count') do
      post :create, profit_loss_statement: { timeline: @profit_loss_statement.timeline, user_id: @profit_loss_statement.user_id }
    end

    assert_redirected_to profit_loss_statement_path(assigns(:profit_loss_statement))
  end

  test "should show profit_loss_statement" do
    get :show, id: @profit_loss_statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profit_loss_statement
    assert_response :success
  end

  test "should update profit_loss_statement" do
    patch :update, id: @profit_loss_statement, profit_loss_statement: { timeline: @profit_loss_statement.timeline, user_id: @profit_loss_statement.user_id }
    assert_redirected_to profit_loss_statement_path(assigns(:profit_loss_statement))
  end

  test "should destroy profit_loss_statement" do
    assert_difference('ProfitLossStatement.count', -1) do
      delete :destroy, id: @profit_loss_statement
    end

    assert_redirected_to profit_loss_statements_path
  end
end
