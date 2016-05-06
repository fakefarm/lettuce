require 'test_helper'

class PlansControllerTest < ActionController::TestCase
  setup do
    @plan = plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan" do
    assert_difference('Plan.count') do
      post :create, plan: { business_plan_url: @plan.business_plan_url, customer_url: @plan.customer_url, image_url: @plan.image_url, investment_money: @plan.investment_money, investment_time: @plan.investment_time, launch_date: @plan.launch_date, mo_goal: @plan.mo_goal, name: @plan.name, project_url: @plan.project_url, summary: @plan.summary, vendor_url: @plan.vendor_url }
    end

    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should show plan" do
    get :show, id: @plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan
    assert_response :success
  end

  test "should update plan" do
    patch :update, id: @plan, plan: { business_plan_url: @plan.business_plan_url, customer_url: @plan.customer_url, image_url: @plan.image_url, investment_money: @plan.investment_money, investment_time: @plan.investment_time, launch_date: @plan.launch_date, mo_goal: @plan.mo_goal, name: @plan.name, project_url: @plan.project_url, summary: @plan.summary, vendor_url: @plan.vendor_url }
    assert_redirected_to plan_path(assigns(:plan))
  end

  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete :destroy, id: @plan
    end

    assert_redirected_to plans_path
  end
end
