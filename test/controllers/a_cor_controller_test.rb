require "test_helper"

class ACorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_cor = a_cor(:one)
  end

  test "should get index" do
    get a_cor_index_url
    assert_response :success
  end

  test "should get new" do
    get new_a_cor_url
    assert_response :success
  end

  test "should create a_cor" do
    assert_difference("ACor.count") do
      post a_cor_index_url, params: { a_cor: { descricao: @a_cor.descricao } }
    end

    assert_redirected_to a_cor_url(ACor.last)
  end

  test "should show a_cor" do
    get a_cor_url(@a_cor)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_cor_url(@a_cor)
    assert_response :success
  end

  test "should update a_cor" do
    patch a_cor_url(@a_cor), params: { a_cor: { descricao: @a_cor.descricao } }
    assert_redirected_to a_cor_url(@a_cor)
  end

  test "should destroy a_cor" do
    assert_difference("ACor.count", -1) do
      delete a_cor_url(@a_cor)
    end

    assert_redirected_to a_cor_index_url
  end
end
