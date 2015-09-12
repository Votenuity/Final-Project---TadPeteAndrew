require 'test_helper'

class CillsControllerTest < ActionController::TestCase
  setup do
    @cill = cills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cill" do
    assert_difference('Cill.count') do
      post :create, cill: {  }
    end

    assert_redirected_to cill_path(assigns(:cill))
  end

  test "should show cill" do
    get :show, id: @cill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cill
    assert_response :success
  end

  test "should update cill" do
    patch :update, id: @cill, cill: {  }
    assert_redirected_to cill_path(assigns(:cill))
  end

  test "should destroy cill" do
    assert_difference('Cill.count', -1) do
      delete :destroy, id: @cill
    end

    assert_redirected_to cills_path
  end
end
