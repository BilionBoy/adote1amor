require "test_helper"

class AEstadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_estado = a_estados(:one)
  end

  test "should get index" do
    get a_estados_url
    assert_response :success
  end

  test "should get new" do
    get new_a_estado_url
    assert_response :success
  end

  test "should create a_estado" do
    assert_difference("AEstado.count") do
      post a_estados_url, params: { a_estado: { descricao: @a_estado.descricao, uf: @a_estado.uf } }
    end

    assert_redirected_to a_estado_url(AEstado.last)
  end

  test "should show a_estado" do
    get a_estado_url(@a_estado)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_estado_url(@a_estado)
    assert_response :success
  end

  test "should update a_estado" do
    patch a_estado_url(@a_estado), params: { a_estado: { descricao: @a_estado.descricao, uf: @a_estado.uf } }
    assert_redirected_to a_estado_url(@a_estado)
  end

  test "should destroy a_estado" do
    assert_difference("AEstado.count", -1) do
      delete a_estado_url(@a_estado)
    end

    assert_redirected_to a_estados_url
  end
end
