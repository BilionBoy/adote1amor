require "test_helper"

class AEventosAnimaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_evento_animal = a_eventos_animais(:one)
  end

  test "should get index" do
    get a_eventos_animais_url
    assert_response :success
  end

  test "should get new" do
    get new_a_evento_animal_url
    assert_response :success
  end

  test "should create a_evento_animal" do
    assert_difference("AEventoAnimal.count") do
      post a_eventos_animais_url, params: { a_evento_animal: { a_animal_id: @a_evento_animal.a_animal_id, a_status_id: @a_evento_animal.a_status_id, a_tipo_evento_id: @a_evento_animal.a_tipo_evento_id } }
    end

    assert_redirected_to a_evento_animal_url(AEventoAnimal.last)
  end

  test "should show a_evento_animal" do
    get a_evento_animal_url(@a_evento_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_evento_animal_url(@a_evento_animal)
    assert_response :success
  end

  test "should update a_evento_animal" do
    patch a_evento_animal_url(@a_evento_animal), params: { a_evento_animal: { a_animal_id: @a_evento_animal.a_animal_id, a_status_id: @a_evento_animal.a_status_id, a_tipo_evento_id: @a_evento_animal.a_tipo_evento_id } }
    assert_redirected_to a_evento_animal_url(@a_evento_animal)
  end

  test "should destroy a_evento_animal" do
    assert_difference("AEventoAnimal.count", -1) do
      delete a_evento_animal_url(@a_evento_animal)
    end

    assert_redirected_to a_eventos_animais_url
  end
end
