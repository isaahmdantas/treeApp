require "application_system_test_case"

class ArvoresTest < ApplicationSystemTestCase
  setup do
    @arvore = arvores(:one)
  end

  test "visiting the index" do
    visit arvores_url
    assert_selector "h1", text: "Arvores"
  end

  test "creating a Arvore" do
    visit arvores_url
    click_on "New Arvore"

    fill_in "Nome", with: @arvore.nome
    click_on "Create Arvore"

    assert_text "Arvore was successfully created"
    click_on "Back"
  end

  test "updating a Arvore" do
    visit arvores_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @arvore.nome
    click_on "Update Arvore"

    assert_text "Arvore was successfully updated"
    click_on "Back"
  end

  test "destroying a Arvore" do
    visit arvores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arvore was successfully destroyed"
  end
end
