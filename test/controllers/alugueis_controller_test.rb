require 'test_helper'

class AlugueisControllerTest < ActionController::TestCase
  setup do
    @aluguel = alugueis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alugueis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluguel" do
    assert_difference('Aluguel.count') do
      post :create, aluguel: { cliente_id: @aluguel.cliente_id, dt_devolucao: @aluguel.dt_devolucao, dt_recebimento: @aluguel.dt_recebimento, preco_total: @aluguel.preco_total, veiculo_id: @aluguel.veiculo_id }
    end

    assert_redirected_to aluguel_path(assigns(:aluguel))
  end

  test "should show aluguel" do
    get :show, id: @aluguel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluguel
    assert_response :success
  end

  test "should update aluguel" do
    patch :update, id: @aluguel, aluguel: { cliente_id: @aluguel.cliente_id, dt_devolucao: @aluguel.dt_devolucao, dt_recebimento: @aluguel.dt_recebimento, preco_total: @aluguel.preco_total, veiculo_id: @aluguel.veiculo_id }
    assert_redirected_to aluguel_path(assigns(:aluguel))
  end

  test "should destroy aluguel" do
    assert_difference('Aluguel.count', -1) do
      delete :destroy, id: @aluguel
    end

    assert_redirected_to alugueis_path
  end
end
