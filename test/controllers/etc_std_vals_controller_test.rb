require 'test_helper'

class EtcStdValsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etc_std_val = etc_std_vals(:one)
  end

  test "should get index" do
    get etc_std_vals_url
    assert_response :success
  end

  test "should get new" do
    get new_etc_std_val_url
    assert_response :success
  end

  test "should create etc_std_val" do
    assert_difference('EtcStdVal.count') do
      post etc_std_vals_url, params: { etc_std_val: { holiday_val: @etc_std_val.holiday_val, mon_avg_worktime: @etc_std_val.mon_avg_worktime, mon_short_worktime: @etc_std_val.mon_short_worktime, praise_val: @etc_std_val.praise_val, std_salary_val: @etc_std_val.std_salary_val } }
    end

    assert_redirected_to etc_std_val_url(EtcStdVal.last)
  end

  test "should show etc_std_val" do
    get etc_std_val_url(@etc_std_val)
    assert_response :success
  end

  test "should get edit" do
    get edit_etc_std_val_url(@etc_std_val)
    assert_response :success
  end

  test "should update etc_std_val" do
    patch etc_std_val_url(@etc_std_val), params: { etc_std_val: { holiday_val: @etc_std_val.holiday_val, mon_avg_worktime: @etc_std_val.mon_avg_worktime, mon_short_worktime: @etc_std_val.mon_short_worktime, praise_val: @etc_std_val.praise_val, std_salary_val: @etc_std_val.std_salary_val } }
    assert_redirected_to etc_std_val_url(@etc_std_val)
  end

  test "should destroy etc_std_val" do
    assert_difference('EtcStdVal.count', -1) do
      delete etc_std_val_url(@etc_std_val)
    end

    assert_redirected_to etc_std_vals_url
  end
end
