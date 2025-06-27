require "application_system_test_case"

class AEventoAnimalsTest < ApplicationSystemTestCase
  setup do
    @a_evento_animal = a_eventos_animais(:one)
  end

  test "visiting the index" do
    visit a_eventos_animais_url
    assert_selector "h1", text: "A evento animals"
  end

  test "should create a evento animal" do
    visit a_eventos_animais_url
    click_on "New a evento animal"

    fill_in "A animal", with: @a_evento_animal.a_animal_id
    fill_in "A status", with: @a_evento_animal.a_status_id
    fill_in "A tipo evento", with: @a_evento_animal.a_tipo_evento_id
    click_on "Create A evento animal"

    assert_text "A evento animal was successfully created"
    click_on "Back"
  end

  test "should update A evento animal" do
    visit a_evento_animal_url(@a_evento_animal)
    click_on "Edit this a evento animal", match: :first

    fill_in "A animal", with: @a_evento_animal.a_animal_id
    fill_in "A status", with: @a_evento_animal.a_status_id
    fill_in "A tipo evento", with: @a_evento_animal.a_tipo_evento_id
    click_on "Update A evento animal"

    assert_text "A evento animal was successfully updated"
    click_on "Back"
  end

  test "should destroy A evento animal" do
    visit a_evento_animal_url(@a_evento_animal)
    click_on "Destroy this a evento animal", match: :first

    assert_text "A evento animal was successfully destroyed"
  end
end
