require 'test_helper'

class ProyectoUsersControllerTest < ActionController::TestCase
  setup do
    @proyecto_user = proyecto_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proyecto_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proyecto_user" do
    assert_difference('ProyectoUser.count') do
      post :create, proyecto_user: { proyecto_id: @proyecto_user.proyecto_id, user_id: @proyecto_user.user_id }
    end

    assert_redirected_to proyecto_user_path(assigns(:proyecto_user))
  end

  test "should show proyecto_user" do
    get :show, id: @proyecto_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proyecto_user
    assert_response :success
  end

  test "should update proyecto_user" do
    patch :update, id: @proyecto_user, proyecto_user: { proyecto_id: @proyecto_user.proyecto_id, user_id: @proyecto_user.user_id }
    assert_redirected_to proyecto_user_path(assigns(:proyecto_user))
  end

  test "should destroy proyecto_user" do
    assert_difference('ProyectoUser.count', -1) do
      delete :destroy, id: @proyecto_user
    end

    assert_redirected_to proyecto_users_path
  end
end
