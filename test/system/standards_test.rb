require "application_system_test_case"

class StandardsTest < ApplicationSystemTestCase
  setup do
    @standard = standards(:one)
  end

  test "visiting the index" do
    visit standards_url
    assert_selector "h1", text: "Standards"
  end

  test "creating a Standard" do
    visit standards_url
    click_on "New Standard"

    click_on "Create Standard"

    assert_text "Standard was successfully created"
    click_on "Back"
  end

  test "updating a Standard" do
    visit standards_url
    click_on "Edit", match: :first

    click_on "Update Standard"

    assert_text "Standard was successfully updated"
    click_on "Back"
  end

  test "destroying a Standard" do
    visit standards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Standard was successfully destroyed"
  end
end
