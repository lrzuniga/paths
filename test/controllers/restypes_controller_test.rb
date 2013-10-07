require 'test_helper'

class RestypesControllerTest < ActionController::TestCase
  setup do
    @restype = restypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restype" do
    assert_difference('Restype.count') do
      post :create, restype: { description: @restype.description, type: @restype.type }
    end

    assert_redirected_to restype_path(assigns(:restype))
  end

  test "should show restype" do
    get :show, id: @restype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restype
    assert_response :success
  end

  test "should update restype" do
    patch :update, id: @restype, restype: { description: @restype.description, type: @restype.type }
    assert_redirected_to restype_path(assigns(:restype))
  end

  test "should destroy restype" do
    assert_difference('Restype.count', -1) do
      delete :destroy, id: @restype
    end

    assert_redirected_to restypes_path
  end
end
