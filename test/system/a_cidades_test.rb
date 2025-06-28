require "application_system_test_case"

class ACidadesTest < ApplicationSystemTestCase
  setup do
    @a_cidade = a_cidades(:one)
  end

  test "visiting the index" do
    visit a_cidades_url
    assert_selector "h1", text: "A cidades"
  end

  test "should create a cidade" do
    visit a_cidades_url
    click_on "New a cidade"

    fill_in "A estado", with: @a_cidade.a_estado_id
    fill_in "Descricao", with: @a_cidade.descricao
    click_on "Create A cidade"

    assert_text "A cidade was successfully created"
    click_on "Back"
  end

  test "should update A cidade" do
    visit a_cidade_url(@a_cidade)
    click_on "Edit this a cidade", match: :first

    fill_in "A estado", with: @a_cidade.a_estado_id
    fill_in "Descricao", with: @a_cidade.descricao
    click_on "Update A cidade"

    assert_text "A cidade was successfully updated"
    click_on "Back"
  end

  test "should destroy A cidade" do
    visit a_cidade_url(@a_cidade)
    click_on "Destroy this a cidade", match: :first

    assert_text "A cidade was successfully destroyed"
  end
end
