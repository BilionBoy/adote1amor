require "test_helper"

class ASexoAnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_sexo_animal = a_sexo_animals(:one)
  end

  test "should get index" do
    get a_sexo_animals_url
    assert_response :success
  end

  test "should get new" do
    get new_a_sexo_animal_url
    assert_response :success
  end

  test "should create a_sexo_animal" do
    assert_difference("ASexoAnimal.count") do
      post a_sexo_animals_url, params: { a_sexo_animal: { descricao: @a_sexo_animal.descricao, sigla: @a_sexo_animal.sigla } }
    end

    assert_redirected_to a_sexo_animal_url(ASexoAnimal.last)
  end

  test "should show a_sexo_animal" do
    get a_sexo_animal_url(@a_sexo_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_sexo_animal_url(@a_sexo_animal)
    assert_response :success
  end

  test "should update a_sexo_animal" do
    patch a_sexo_animal_url(@a_sexo_animal), params: { a_sexo_animal: { descricao: @a_sexo_animal.descricao, sigla: @a_sexo_animal.sigla } }
    assert_redirected_to a_sexo_animal_url(@a_sexo_animal)
  end

  test "should destroy a_sexo_animal" do
    assert_difference("ASexoAnimal.count", -1) do
      delete a_sexo_animal_url(@a_sexo_animal)
    end

    assert_redirected_to a_sexo_animals_url
  end
end
