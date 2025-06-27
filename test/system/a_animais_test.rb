require "application_system_test_case"

class AAnimalsTest < ApplicationSystemTestCase
  setup do
    @a_animal = a_animais(:one)
  end

  test "visiting the index" do
    visit a_animais_url
    assert_selector "h1", text: "A animals"
  end

  test "should create a animal" do
    visit a_animais_url
    click_on "New a animal"

    fill_in "A bairro", with: @a_animal.a_bairro_id
    fill_in "A cor", with: @a_animal.a_cor_id
    fill_in "A especie", with: @a_animal.a_especie_id
    fill_in "A porte", with: @a_animal.a_porte_id
    check "Castrado" if @a_animal.castrado
    fill_in "Descricao", with: @a_animal.descricao
    fill_in "Idade", with: @a_animal.idade
    fill_in "Nome", with: @a_animal.nome
    fill_in "Visto por ultimo", with: @a_animal.visto_por_ultimo
    click_on "Create A animal"

    assert_text "A animal was successfully created"
    click_on "Back"
  end

  test "should update A animal" do
    visit a_animal_url(@a_animal)
    click_on "Edit this a animal", match: :first

    fill_in "A bairro", with: @a_animal.a_bairro_id
    fill_in "A cor", with: @a_animal.a_cor_id
    fill_in "A especie", with: @a_animal.a_especie_id
    fill_in "A porte", with: @a_animal.a_porte_id
    check "Castrado" if @a_animal.castrado
    fill_in "Descricao", with: @a_animal.descricao
    fill_in "Idade", with: @a_animal.idade
    fill_in "Nome", with: @a_animal.nome
    fill_in "Visto por ultimo", with: @a_animal.visto_por_ultimo.to_s
    click_on "Update A animal"

    assert_text "A animal was successfully updated"
    click_on "Back"
  end

  test "should destroy A animal" do
    visit a_animal_url(@a_animal)
    click_on "Destroy this a animal", match: :first

    assert_text "A animal was successfully destroyed"
  end
end
