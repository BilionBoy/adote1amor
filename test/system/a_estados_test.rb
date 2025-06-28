require "application_system_test_case"

class AEstadosTest < ApplicationSystemTestCase
  setup do
    @a_estado = a_estados(:one)
  end

  test "visiting the index" do
    visit a_estados_url
    assert_selector "h1", text: "A estados"
  end

  test "should create a estado" do
    visit a_estados_url
    click_on "New a estado"

    fill_in "Descricao", with: @a_estado.descricao
    fill_in "Uf", with: @a_estado.uf
    click_on "Create A estado"

    assert_text "A estado was successfully created"
    click_on "Back"
  end

  test "should update A estado" do
    visit a_estado_url(@a_estado)
    click_on "Edit this a estado", match: :first

    fill_in "Descricao", with: @a_estado.descricao
    fill_in "Uf", with: @a_estado.uf
    click_on "Update A estado"

    assert_text "A estado was successfully updated"
    click_on "Back"
  end

  test "should destroy A estado" do
    visit a_estado_url(@a_estado)
    click_on "Destroy this a estado", match: :first

    assert_text "A estado was successfully destroyed"
  end
end
