require 'test_helper'

class SalariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get salaries_url
    assert_response :success
  end

  test "should get new" do
    get new_salary_url
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salary.count') do
      post salaries_url, params: { salary: { ability_sal: @salary.ability_sal, basic_sal: @salary.basic_sal, diff_hour_sal: @salary.diff_hour_sal, diff_total_sal: @salary.diff_total_sal, emp_id: @salary.emp_id, fam_sal: @salary.fam_sal, hour_sal: @salary.hour_sal, last_hour_sal: @salary.last_hour_sal, last_rate: @salary.last_rate, last_total_sal: @salary.last_total_sal, over_hour_sal: @salary.over_hour_sal, over_sal: @salary.over_sal, position_sal: @salary.position_sal, praise_sal: @salary.praise_sal, rate: @salary.rate, residence_spt_sal: @salary.residence_spt_sal, standard_sal: @salary.standard_sal, task_sal: @salary.task_sal, total_sal: @salary.total_sal } }
    end

    assert_redirected_to salary_url(Salary.last)
  end

  test "should show salary" do
    get salary_url(@salary)
    assert_response :success
  end

  test "should get edit" do
    get edit_salary_url(@salary)
    assert_response :success
  end

  test "should update salary" do
    patch salary_url(@salary), params: { salary: { ability_sal: @salary.ability_sal, basic_sal: @salary.basic_sal, diff_hour_sal: @salary.diff_hour_sal, diff_total_sal: @salary.diff_total_sal, emp_id: @salary.emp_id, fam_sal: @salary.fam_sal, hour_sal: @salary.hour_sal, last_hour_sal: @salary.last_hour_sal, last_rate: @salary.last_rate, last_total_sal: @salary.last_total_sal, over_hour_sal: @salary.over_hour_sal, over_sal: @salary.over_sal, position_sal: @salary.position_sal, praise_sal: @salary.praise_sal, rate: @salary.rate, residence_spt_sal: @salary.residence_spt_sal, standard_sal: @salary.standard_sal, task_sal: @salary.task_sal, total_sal: @salary.total_sal } }
    assert_redirected_to salary_url(@salary)
  end

  test "should destroy salary" do
    assert_difference('Salary.count', -1) do
      delete salary_url(@salary)
    end

    assert_redirected_to salaries_url
  end
end
