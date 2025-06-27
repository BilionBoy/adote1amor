require "application_system_test_case"

class ABairrosTest < ApplicationSystemTestCase
  setup do
    @a_bairro = a_bairros(:one)
  end

  test "visiting the index" do
    visit a_bairros_url
    assert_selector "h1", text: "A bairros"
  end

  test "should create a bairro" do
    visit a_bairros_url
    click_on "New a bairro"

    fill_in "Descricao", with: @a_bairro.descricao
    click_on "Create A bairro"

    assert_text "A bairro was successfully created"
    click_on "Back"
  end

  test "should update A bairro" do
    visit a_bairro_url(@a_bairro)
    click_on "Edit this a bairro", match: :first

    fill_in "Descricao", with: @a_bairro.descricao
    click_on "Update A bairro"

    assert_text "A bairro was successfully updated"
    click_on "Back"
  end

  test "should destroy A bairro" do
    visit a_bairro_url(@a_bairro)
    click_on "Destroy this a bairro", match: :first

    assert_text "A bairro was successfully destroyed"
  end
end
