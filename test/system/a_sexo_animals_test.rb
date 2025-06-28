require "application_system_test_case"

class ASexoAnimalsTest < ApplicationSystemTestCase
  setup do
    @a_sexo_animal = a_sexo_animals(:one)
  end

  test "visiting the index" do
    visit a_sexo_animals_url
    assert_selector "h1", text: "A sexo animals"
  end

  test "should create a sexo animal" do
    visit a_sexo_animals_url
    click_on "New a sexo animal"

    fill_in "Descricao", with: @a_sexo_animal.descricao
    fill_in "Sigla", with: @a_sexo_animal.sigla
    click_on "Create A sexo animal"

    assert_text "A sexo animal was successfully created"
    click_on "Back"
  end

  test "should update A sexo animal" do
    visit a_sexo_animal_url(@a_sexo_animal)
    click_on "Edit this a sexo animal", match: :first

    fill_in "Descricao", with: @a_sexo_animal.descricao
    fill_in "Sigla", with: @a_sexo_animal.sigla
    click_on "Update A sexo animal"

    assert_text "A sexo animal was successfully updated"
    click_on "Back"
  end

  test "should destroy A sexo animal" do
    visit a_sexo_animal_url(@a_sexo_animal)
    click_on "Destroy this a sexo animal", match: :first

    assert_text "A sexo animal was successfully destroyed"
  end
end
