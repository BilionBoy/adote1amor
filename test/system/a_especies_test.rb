require "application_system_test_case"

class AEspeciesTest < ApplicationSystemTestCase
  setup do
    @a_especie = a_especies(:one)
  end

  test "visiting the index" do
    visit a_especies_url
    assert_selector "h1", text: "A especies"
  end

  test "should create a especie" do
    visit a_especies_url
    click_on "New a especie"

    fill_in "Descricao", with: @a_especie.descricao
    click_on "Create A especie"

    assert_text "A especie was successfully created"
    click_on "Back"
  end

  test "should update A especie" do
    visit a_especie_url(@a_especie)
    click_on "Edit this a especie", match: :first

    fill_in "Descricao", with: @a_especie.descricao
    click_on "Update A especie"

    assert_text "A especie was successfully updated"
    click_on "Back"
  end

  test "should destroy A especie" do
    visit a_especie_url(@a_especie)
    click_on "Destroy this a especie", match: :first

    assert_text "A especie was successfully destroyed"
  end
end
