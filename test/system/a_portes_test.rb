require "application_system_test_case"

class APortesTest < ApplicationSystemTestCase
  setup do
    @a_porte = a_portes(:one)
  end

  test "visiting the index" do
    visit a_portes_url
    assert_selector "h1", text: "A portes"
  end

  test "should create a porte" do
    visit a_portes_url
    click_on "New a porte"

    fill_in "Descricao", with: @a_porte.descricao
    click_on "Create A porte"

    assert_text "A porte was successfully created"
    click_on "Back"
  end

  test "should update A porte" do
    visit a_porte_url(@a_porte)
    click_on "Edit this a porte", match: :first

    fill_in "Descricao", with: @a_porte.descricao
    click_on "Update A porte"

    assert_text "A porte was successfully updated"
    click_on "Back"
  end

  test "should destroy A porte" do
    visit a_porte_url(@a_porte)
    click_on "Destroy this a porte", match: :first

    assert_text "A porte was successfully destroyed"
  end
end
