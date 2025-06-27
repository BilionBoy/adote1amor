require "test_helper"

class ABairrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_bairro = a_bairros(:one)
  end

  test "should get index" do
    get a_bairros_url
    assert_response :success
  end

  test "should get new" do
    get new_a_bairro_url
    assert_response :success
  end

  test "should create a_bairro" do
    assert_difference("ABairro.count") do
      post a_bairros_url, params: { a_bairro: { descricao: @a_bairro.descricao } }
    end

    assert_redirected_to a_bairro_url(ABairro.last)
  end

  test "should show a_bairro" do
    get a_bairro_url(@a_bairro)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_bairro_url(@a_bairro)
    assert_response :success
  end

  test "should update a_bairro" do
    patch a_bairro_url(@a_bairro), params: { a_bairro: { descricao: @a_bairro.descricao } }
    assert_redirected_to a_bairro_url(@a_bairro)
  end

  test "should destroy a_bairro" do
    assert_difference("ABairro.count", -1) do
      delete a_bairro_url(@a_bairro)
    end

    assert_redirected_to a_bairros_url
  end
end
