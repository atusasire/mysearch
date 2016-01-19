require 'test_helper'

class MybusinessesControllerTest < ActionController::TestCase
  setup do
    @mybusiness = mybusinesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mybusinesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mybusiness" do
    assert_difference('Mybusiness.count') do
      post :create, mybusiness: { category: @mybusiness.category, contact: @mybusiness.contact, description: @mybusiness.description, district: @mybusiness.district, name: @mybusiness.name, type: @mybusiness.type, village: @mybusiness.village }
    end

    assert_redirected_to mybusiness_path(assigns(:mybusiness))
  end

  test "should show mybusiness" do
    get :show, id: @mybusiness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mybusiness
    assert_response :success
  end

  test "should update mybusiness" do
    patch :update, id: @mybusiness, mybusiness: { category: @mybusiness.category, contact: @mybusiness.contact, description: @mybusiness.description, district: @mybusiness.district, name: @mybusiness.name, type: @mybusiness.type, village: @mybusiness.village }
    assert_redirected_to mybusiness_path(assigns(:mybusiness))
  end

  test "should destroy mybusiness" do
    assert_difference('Mybusiness.count', -1) do
      delete :destroy, id: @mybusiness
    end

    assert_redirected_to mybusinesses_path
  end
end
