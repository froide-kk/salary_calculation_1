require "application_system_test_case"

class AddEmployeesTest < ApplicationSystemTestCase
  setup do
    @add_employee = add_employees(:one)
  end

  test "visiting the index" do
    visit add_employees_url
    assert_selector "h1", text: "Add Employees"
  end

  test "creating a Add employee" do
    visit add_employees_url
    click_on "New Add Employee"

    click_on "Create Add employee"

    assert_text "Add employee was successfully created"
    click_on "Back"
  end

  test "updating a Add employee" do
    visit add_employees_url
    click_on "Edit", match: :first

    click_on "Update Add employee"

    assert_text "Add employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Add employee" do
    visit add_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add employee was successfully destroyed"
  end
end
