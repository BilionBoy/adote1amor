require "test_helper"

class APortesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_porte = a_portes(:one)
  end

  test "should get index" do
    get a_portes_url
    assert_response :success
  end

  test "should get new" do
    get new_a_porte_url
    assert_response :success
  end

  test "should create a_porte" do
    assert_difference("APorte.count") do
      post a_portes_url, params: { a_porte: { descricao: @a_porte.descricao } }
    end

    assert_redirected_to a_porte_url(APorte.last)
  end

  test "should show a_porte" do
    get a_porte_url(@a_porte)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_porte_url(@a_porte)
    assert_response :success
  end

  test "should update a_porte" do
    patch a_porte_url(@a_porte), params: { a_porte: { descricao: @a_porte.descricao } }
    assert_redirected_to a_porte_url(@a_porte)
  end

  test "should destroy a_porte" do
    assert_difference("APorte.count", -1) do
      delete a_porte_url(@a_porte)
    end

    assert_redirected_to a_portes_url
  end
end
