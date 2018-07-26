require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Age", with: @employee.age
    fill_in "Birth", with: @employee.birth
    fill_in "Department", with: @employee.department
    fill_in "Emp", with: @employee.emp_id
    fill_in "Fam Except Spouse", with: @employee.fam_except_spouse
    fill_in "Fam Spouse", with: @employee.fam_spouse
    fill_in "Judgment", with: @employee.judgment
    fill_in "Name", with: @employee.name
    fill_in "Position", with: @employee.position
    fill_in "Residence", with: @employee.residence
    fill_in "Task", with: @employee.task
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Age", with: @employee.age
    fill_in "Birth", with: @employee.birth
    fill_in "Department", with: @employee.department
    fill_in "Emp", with: @employee.emp_id
    fill_in "Fam Except Spouse", with: @employee.fam_except_spouse
    fill_in "Fam Spouse", with: @employee.fam_spouse
    fill_in "Judgment", with: @employee.judgment
    fill_in "Name", with: @employee.name
    fill_in "Position", with: @employee.position
    fill_in "Residence", with: @employee.residence
    fill_in "Task", with: @employee.task
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
