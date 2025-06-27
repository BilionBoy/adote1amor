require "application_system_test_case"

class ACorsTest < ApplicationSystemTestCase
  setup do
    @a_cor = a_cor(:one)
  end

  test "visiting the index" do
    visit a_cor_url
    assert_selector "h1", text: "A cors"
  end

  test "should create a cor" do
    visit a_cor_url
    click_on "New a cor"

    fill_in "Descricao", with: @a_cor.descricao
    click_on "Create A cor"

    assert_text "A cor was successfully created"
    click_on "Back"
  end

  test "should update A cor" do
    visit a_cor_url(@a_cor)
    click_on "Edit this a cor", match: :first

    fill_in "Descricao", with: @a_cor.descricao
    click_on "Update A cor"

    assert_text "A cor was successfully updated"
    click_on "Back"
  end

  test "should destroy A cor" do
    visit a_cor_url(@a_cor)
    click_on "Destroy this a cor", match: :first

    assert_text "A cor was successfully destroyed"
  end
end
