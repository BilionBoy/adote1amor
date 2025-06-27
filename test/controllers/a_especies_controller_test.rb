require "test_helper"

class AEspeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_especie = a_especies(:one)
  end

  test "should get index" do
    get a_especies_url
    assert_response :success
  end

  test "should get new" do
    get new_a_especie_url
    assert_response :success
  end

  test "should create a_especie" do
    assert_difference("AEspecie.count") do
      post a_especies_url, params: { a_especie: { descricao: @a_especie.descricao } }
    end

    assert_redirected_to a_especie_url(AEspecie.last)
  end

  test "should show a_especie" do
    get a_especie_url(@a_especie)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_especie_url(@a_especie)
    assert_response :success
  end

  test "should update a_especie" do
    patch a_especie_url(@a_especie), params: { a_especie: { descricao: @a_especie.descricao } }
    assert_redirected_to a_especie_url(@a_especie)
  end

  test "should destroy a_especie" do
    assert_difference("AEspecie.count", -1) do
      delete a_especie_url(@a_especie)
    end

    assert_redirected_to a_especies_url
  end
end
