require 'test_helper'

class BudgetCateogriesControllerTest < ActionController::TestCase
  setup do
    @budget_cateogry = budget_cateogries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:budget_cateogries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create budget_cateogry" do
    assert_difference('BudgetCateogry.count') do
      post :create, budget_cateogry: { family_id: @budget_cateogry.family_id, name: @budget_cateogry.name, note: @budget_cateogry.note, tag: @budget_cateogry.tag, user_id: @budget_cateogry.user_id }
    end

    assert_redirected_to budget_cateogry_path(assigns(:budget_cateogry))
  end

  test "should show budget_cateogry" do
    get :show, id: @budget_cateogry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @budget_cateogry
    assert_response :success
  end

  test "should update budget_cateogry" do
    patch :update, id: @budget_cateogry, budget_cateogry: { family_id: @budget_cateogry.family_id, name: @budget_cateogry.name, note: @budget_cateogry.note, tag: @budget_cateogry.tag, user_id: @budget_cateogry.user_id }
    assert_redirected_to budget_cateogry_path(assigns(:budget_cateogry))
  end

  test "should destroy budget_cateogry" do
    assert_difference('BudgetCateogry.count', -1) do
      delete :destroy, id: @budget_cateogry
    end

    assert_redirected_to budget_cateogries_path
  end
end
