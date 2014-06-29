require 'test_helper'

class VotacionsControllerTest < ActionController::TestCase
  setup do
    @votacion = votacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create votacion" do
    assert_difference('Votacion.count') do
      post :create, votacion: { proyecto_id: @votacion.proyecto_id, user_id: @votacion.user_id, valor: @votacion.valor }
    end

    assert_redirected_to votacion_path(assigns(:votacion))
  end

  test "should show votacion" do
    get :show, id: @votacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @votacion
    assert_response :success
  end

  test "should update votacion" do
    patch :update, id: @votacion, votacion: { proyecto_id: @votacion.proyecto_id, user_id: @votacion.user_id, valor: @votacion.valor }
    assert_redirected_to votacion_path(assigns(:votacion))
  end

  test "should destroy votacion" do
    assert_difference('Votacion.count', -1) do
      delete :destroy, id: @votacion
    end

    assert_redirected_to votacions_path
  end
end
