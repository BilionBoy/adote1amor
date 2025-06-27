require "test_helper"

class ATipoEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_tipo_evento = a_tipo_eventos(:one)
  end

  test "should get index" do
    get a_tipo_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_a_tipo_evento_url
    assert_response :success
  end

  test "should create a_tipo_evento" do
    assert_difference("ATipoEvento.count") do
      post a_tipo_eventos_url, params: { a_tipo_evento: { descricao: @a_tipo_evento.descricao } }
    end

    assert_redirected_to a_tipo_evento_url(ATipoEvento.last)
  end

  test "should show a_tipo_evento" do
    get a_tipo_evento_url(@a_tipo_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_tipo_evento_url(@a_tipo_evento)
    assert_response :success
  end

  test "should update a_tipo_evento" do
    patch a_tipo_evento_url(@a_tipo_evento), params: { a_tipo_evento: { descricao: @a_tipo_evento.descricao } }
    assert_redirected_to a_tipo_evento_url(@a_tipo_evento)
  end

  test "should destroy a_tipo_evento" do
    assert_difference("ATipoEvento.count", -1) do
      delete a_tipo_evento_url(@a_tipo_evento)
    end

    assert_redirected_to a_tipo_eventos_url
  end
end
