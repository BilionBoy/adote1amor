require "test_helper"

class AAnimaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_animal = a_animais(:one)
  end

  test "should get index" do
    get a_animais_url
    assert_response :success
  end

  test "should get new" do
    get new_a_animal_url
    assert_response :success
  end

  test "should create a_animal" do
    assert_difference("AAnimal.count") do
      post a_animais_url, params: { a_animal: { a_bairro_id: @a_animal.a_bairro_id, a_cor_id: @a_animal.a_cor_id, a_especie_id: @a_animal.a_especie_id, a_porte_id: @a_animal.a_porte_id, castrado: @a_animal.castrado, descricao: @a_animal.descricao, idade: @a_animal.idade, nome: @a_animal.nome, visto_por_ultimo: @a_animal.visto_por_ultimo } }
    end

    assert_redirected_to a_animal_url(AAnimal.last)
  end

  test "should show a_animal" do
    get a_animal_url(@a_animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_animal_url(@a_animal)
    assert_response :success
  end

  test "should update a_animal" do
    patch a_animal_url(@a_animal), params: { a_animal: { a_bairro_id: @a_animal.a_bairro_id, a_cor_id: @a_animal.a_cor_id, a_especie_id: @a_animal.a_especie_id, a_porte_id: @a_animal.a_porte_id, castrado: @a_animal.castrado, descricao: @a_animal.descricao, idade: @a_animal.idade, nome: @a_animal.nome, visto_por_ultimo: @a_animal.visto_por_ultimo } }
    assert_redirected_to a_animal_url(@a_animal)
  end

  test "should destroy a_animal" do
    assert_difference("AAnimal.count", -1) do
      delete a_animal_url(@a_animal)
    end

    assert_redirected_to a_animais_url
  end
end
