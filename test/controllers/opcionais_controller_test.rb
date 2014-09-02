require 'test_helper'

class OpcionaisControllerTest < ActionController::TestCase
  setup do
    @opcional = opcionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opcionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opcional" do
    assert_difference('Opcional.count') do
      post :create, opcional: { descricao: @opcional.descricao, nome: @opcional.nome, valor: @opcional.valor, veiculo_id: @opcional.veiculo_id }
    end

    assert_redirected_to opcional_path(assigns(:opcional))
  end

  test "should show opcional" do
    get :show, id: @opcional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opcional
    assert_response :success
  end

  test "should update opcional" do
    patch :update, id: @opcional, opcional: { descricao: @opcional.descricao, nome: @opcional.nome, valor: @opcional.valor, veiculo_id: @opcional.veiculo_id }
    assert_redirected_to opcional_path(assigns(:opcional))
  end

  test "should destroy opcional" do
    assert_difference('Opcional.count', -1) do
      delete :destroy, id: @opcional
    end

    assert_redirected_to opcionais_path
  end
end
