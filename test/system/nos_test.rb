require "application_system_test_case"

class NosTest < ApplicationSystemTestCase
  setup do
    @no = nos(:one)
  end

  test "visiting the index" do
    visit nos_url
    assert_selector "h1", text: "Nos"
  end

  test "creating a No" do
    visit nos_url
    click_on "New No"

    fill_in "No", with: @no.no_id
    fill_in "Nome", with: @no.nome
    click_on "Create No"

    assert_text "No was successfully created"
    click_on "Back"
  end

  test "updating a No" do
    visit nos_url
    click_on "Edit", match: :first

    fill_in "No", with: @no.no_id
    fill_in "Nome", with: @no.nome
    click_on "Update No"

    assert_text "No was successfully updated"
    click_on "Back"
  end

  test "destroying a No" do
    visit nos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "No was successfully destroyed"
  end
end
