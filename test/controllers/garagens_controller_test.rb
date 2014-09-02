require 'test_helper'

class GaragensControllerTest < ActionController::TestCase
  setup do
    @garagem = garagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garagem" do
    assert_difference('Garagem.count') do
      post :create, garagem: { endereco_id: @garagem.endereco_id, nome: @garagem.nome }
    end

    assert_redirected_to garagem_path(assigns(:garagem))
  end

  test "should show garagem" do
    get :show, id: @garagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garagem
    assert_response :success
  end

  test "should update garagem" do
    patch :update, id: @garagem, garagem: { endereco_id: @garagem.endereco_id, nome: @garagem.nome }
    assert_redirected_to garagem_path(assigns(:garagem))
  end

  test "should destroy garagem" do
    assert_difference('Garagem.count', -1) do
      delete :destroy, id: @garagem
    end

    assert_redirected_to garagens_path
  end
end
