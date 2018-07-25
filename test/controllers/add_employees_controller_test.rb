require 'test_helper'

class AddEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_employee = add_employees(:one)
  end

  test "should get index" do
    get add_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_add_employee_url
    assert_response :success
  end

  test "should create add_employee" do
    assert_difference('AddEmployee.count') do
      post add_employees_url, params: { add_employee: {  } }
    end

    assert_redirected_to add_employee_url(AddEmployee.last)
  end

  test "should show add_employee" do
    get add_employee_url(@add_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_employee_url(@add_employee)
    assert_response :success
  end

  test "should update add_employee" do
    patch add_employee_url(@add_employee), params: { add_employee: {  } }
    assert_redirected_to add_employee_url(@add_employee)
  end

  test "should destroy add_employee" do
    assert_difference('AddEmployee.count', -1) do
      delete add_employee_url(@add_employee)
    end

    assert_redirected_to add_employees_url
  end
end
