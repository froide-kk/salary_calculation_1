require 'test_helper'

class TaskStdValsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_std_val = task_std_vals(:one)
  end

  test "should get index" do
    get task_std_vals_url
    assert_response :success
  end

  test "should get new" do
    get new_task_std_val_url
    assert_response :success
  end

  test "should create task_std_val" do
    assert_difference('TaskStdVal.count') do
      post task_std_vals_url, params: { task_std_val: { task_name: @task_std_val.task_name, task_val: @task_std_val.task_val } }
    end

    assert_redirected_to task_std_val_url(TaskStdVal.last)
  end

  test "should show task_std_val" do
    get task_std_val_url(@task_std_val)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_std_val_url(@task_std_val)
    assert_response :success
  end

  test "should update task_std_val" do
    patch task_std_val_url(@task_std_val), params: { task_std_val: { task_name: @task_std_val.task_name, task_val: @task_std_val.task_val } }
    assert_redirected_to task_std_val_url(@task_std_val)
  end

  test "should destroy task_std_val" do
    assert_difference('TaskStdVal.count', -1) do
      delete task_std_val_url(@task_std_val)
    end

    assert_redirected_to task_std_vals_url
  end
end
