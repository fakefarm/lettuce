require 'test_helper'

class HelpControllerTest < ActionController::TestCase
  setup do
    @help = help(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help" do
    assert_difference('Help.count') do
      post :create, help: { body: @help.body, tags: @help.tags, title: @help.title }
    end

    assert_redirected_to help_path(assigns(:help))
  end

  test "should show help" do
    get :show, id: @help
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help
    assert_response :success
  end

  test "should update help" do
    patch :update, id: @help, help: { body: @help.body, tags: @help.tags, title: @help.title }
    assert_redirected_to help_path(assigns(:help))
  end

  test "should destroy help" do
    assert_difference('Help.count', -1) do
      delete :destroy, id: @help
    end

    assert_redirected_to help_index_path
  end
end
