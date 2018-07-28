require 'test_helper'

class ResidenceStdValsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residence_std_val = residence_std_vals(:one)
  end

  test "should get index" do
    get residence_std_vals_url
    assert_response :success
  end

  test "should get new" do
    get new_residence_std_val_url
    assert_response :success
  end

  test "should create residence_std_val" do
    assert_difference('ResidenceStdVal.count') do
      post residence_std_vals_url, params: { residence_std_val: { residence_name: @residence_std_val.residence_name, residence_spt_val: @residence_std_val.residence_spt_val } }
    end

    assert_redirected_to residence_std_val_url(ResidenceStdVal.last)
  end

  test "should show residence_std_val" do
    get residence_std_val_url(@residence_std_val)
    assert_response :success
  end

  test "should get edit" do
    get edit_residence_std_val_url(@residence_std_val)
    assert_response :success
  end

  test "should update residence_std_val" do
    patch residence_std_val_url(@residence_std_val), params: { residence_std_val: { residence_name: @residence_std_val.residence_name, residence_spt_val: @residence_std_val.residence_spt_val } }
    assert_redirected_to residence_std_val_url(@residence_std_val)
  end

  test "should destroy residence_std_val" do
    assert_difference('ResidenceStdVal.count', -1) do
      delete residence_std_val_url(@residence_std_val)
    end

    assert_redirected_to residence_std_vals_url
  end
end
