require "test_helper"

class ACidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_cidade = a_cidades(:one)
  end

  test "should get index" do
    get a_cidades_url
    assert_response :success
  end

  test "should get new" do
    get new_a_cidade_url
    assert_response :success
  end

  test "should create a_cidade" do
    assert_difference("ACidade.count") do
      post a_cidades_url, params: { a_cidade: { a_estado_id: @a_cidade.a_estado_id, descricao: @a_cidade.descricao } }
    end

    assert_redirected_to a_cidade_url(ACidade.last)
  end

  test "should show a_cidade" do
    get a_cidade_url(@a_cidade)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_cidade_url(@a_cidade)
    assert_response :success
  end

  test "should update a_cidade" do
    patch a_cidade_url(@a_cidade), params: { a_cidade: { a_estado_id: @a_cidade.a_estado_id, descricao: @a_cidade.descricao } }
    assert_redirected_to a_cidade_url(@a_cidade)
  end

  test "should destroy a_cidade" do
    assert_difference("ACidade.count", -1) do
      delete a_cidade_url(@a_cidade)
    end

    assert_redirected_to a_cidades_url
  end
end
