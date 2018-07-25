require "application_system_test_case"

class TopsTest < ApplicationSystemTestCase
  setup do
    @top = tops(:one)
  end

  test "visiting the index" do
    visit tops_url
    assert_selector "h1", text: "Tops"
  end

  test "creating a Top" do
    visit tops_url
    click_on "New Top"

    fill_in "Age", with: @top.age
    fill_in "Emp", with: @top.emp_id
    fill_in "Name", with: @top.name
    fill_in "Pay", with: @top.pay
    click_on "Create Top"

    assert_text "Top was successfully created"
    click_on "Back"
  end

  test "updating a Top" do
    visit tops_url
    click_on "Edit", match: :first

    fill_in "Age", with: @top.age
    fill_in "Emp", with: @top.emp_id
    fill_in "Name", with: @top.name
    fill_in "Pay", with: @top.pay
    click_on "Update Top"

    assert_text "Top was successfully updated"
    click_on "Back"
  end

  test "destroying a Top" do
    visit tops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Top was successfully destroyed"
  end
end
