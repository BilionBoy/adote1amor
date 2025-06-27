require "application_system_test_case"

class ATipoEventosTest < ApplicationSystemTestCase
  setup do
    @a_tipo_evento = a_tipo_eventos(:one)
  end

  test "visiting the index" do
    visit a_tipo_eventos_url
    assert_selector "h1", text: "A tipo eventos"
  end

  test "should create a tipo evento" do
    visit a_tipo_eventos_url
    click_on "New a tipo evento"

    fill_in "Descricao", with: @a_tipo_evento.descricao
    click_on "Create A tipo evento"

    assert_text "A tipo evento was successfully created"
    click_on "Back"
  end

  test "should update A tipo evento" do
    visit a_tipo_evento_url(@a_tipo_evento)
    click_on "Edit this a tipo evento", match: :first

    fill_in "Descricao", with: @a_tipo_evento.descricao
    click_on "Update A tipo evento"

    assert_text "A tipo evento was successfully updated"
    click_on "Back"
  end

  test "should destroy A tipo evento" do
    visit a_tipo_evento_url(@a_tipo_evento)
    click_on "Destroy this a tipo evento", match: :first

    assert_text "A tipo evento was successfully destroyed"
  end
end
