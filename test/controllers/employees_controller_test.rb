require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { age: @employee.age, birth: @employee.birth, department: @employee.department, emp_id: @employee.emp_id, fam_except_spouse: @employee.fam_except_spouse, fam_spouse: @employee.fam_spouse, judgment: @employee.judgment, name: @employee.name, position: @employee.position, residence: @employee.residence, task: @employee.task } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { age: @employee.age, birth: @employee.birth, department: @employee.department, emp_id: @employee.emp_id, fam_except_spouse: @employee.fam_except_spouse, fam_spouse: @employee.fam_spouse, judgment: @employee.judgment, name: @employee.name, position: @employee.position, residence: @employee.residence, task: @employee.task } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
