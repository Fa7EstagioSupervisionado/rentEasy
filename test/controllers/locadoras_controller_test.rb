require 'test_helper'

class LocadorasControllerTest < ActionController::TestCase
  setup do
    @locadora = locadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locadora" do
    assert_difference('Locadora.count') do
      post :create, locadora: { cnpj: @locadora.cnpj, email: @locadora.email, endereco_id: @locadora.endereco_id, nome: @locadora.nome, responsavel: @locadora.responsavel, telefone: @locadora.telefone }
    end

    assert_redirected_to locadora_path(assigns(:locadora))
  end

  test "should show locadora" do
    get :show, id: @locadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locadora
    assert_response :success
  end

  test "should update locadora" do
    patch :update, id: @locadora, locadora: { cnpj: @locadora.cnpj, email: @locadora.email, endereco_id: @locadora.endereco_id, nome: @locadora.nome, responsavel: @locadora.responsavel, telefone: @locadora.telefone }
    assert_redirected_to locadora_path(assigns(:locadora))
  end

  test "should destroy locadora" do
    assert_difference('Locadora.count', -1) do
      delete :destroy, id: @locadora
    end

    assert_redirected_to locadoras_path
  end
end
