require 'test_helper'

class EvaluationStdValsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_std_val = evaluation_std_vals(:one)
  end

  test "should get index" do
    get evaluation_std_vals_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_std_val_url
    assert_response :success
  end

  test "should create evaluation_std_val" do
    assert_difference('EvaluationStdVal.count') do
      post evaluation_std_vals_url, params: { evaluation_std_val: { eval_name: @evaluation_std_val.eval_name, eval_val: @evaluation_std_val.eval_val } }
    end

    assert_redirected_to evaluation_std_val_url(EvaluationStdVal.last)
  end

  test "should show evaluation_std_val" do
    get evaluation_std_val_url(@evaluation_std_val)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_std_val_url(@evaluation_std_val)
    assert_response :success
  end

  test "should update evaluation_std_val" do
    patch evaluation_std_val_url(@evaluation_std_val), params: { evaluation_std_val: { eval_name: @evaluation_std_val.eval_name, eval_val: @evaluation_std_val.eval_val } }
    assert_redirected_to evaluation_std_val_url(@evaluation_std_val)
  end

  test "should destroy evaluation_std_val" do
    assert_difference('EvaluationStdVal.count', -1) do
      delete evaluation_std_val_url(@evaluation_std_val)
    end

    assert_redirected_to evaluation_std_vals_url
  end
end
