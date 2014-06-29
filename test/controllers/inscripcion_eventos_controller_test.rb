require 'test_helper'

class InscripcionEventosControllerTest < ActionController::TestCase
  setup do
    @inscripcion_evento = inscripcion_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscripcion_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscripcion_evento" do
    assert_difference('InscripcionEvento.count') do
      post :create, inscripcion_evento: { evento_id: @inscripcion_evento.evento_id, user_id: @inscripcion_evento.user_id }
    end

    assert_redirected_to inscripcion_evento_path(assigns(:inscripcion_evento))
  end

  test "should show inscripcion_evento" do
    get :show, id: @inscripcion_evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inscripcion_evento
    assert_response :success
  end

  test "should update inscripcion_evento" do
    patch :update, id: @inscripcion_evento, inscripcion_evento: { evento_id: @inscripcion_evento.evento_id, user_id: @inscripcion_evento.user_id }
    assert_redirected_to inscripcion_evento_path(assigns(:inscripcion_evento))
  end

  test "should destroy inscripcion_evento" do
    assert_difference('InscripcionEvento.count', -1) do
      delete :destroy, id: @inscripcion_evento
    end

    assert_redirected_to inscripcion_eventos_path
  end
end
