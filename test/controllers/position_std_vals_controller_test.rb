require 'test_helper'

class PositionStdValsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_std_val = position_std_vals(:one)
  end

  test "should get index" do
    get position_std_vals_url
    assert_response :success
  end

  test "should get new" do
    get new_position_std_val_url
    assert_response :success
  end

  test "should create position_std_val" do
    assert_difference('PositionStdVal.count') do
      post position_std_vals_url, params: { position_std_val: { ability_val: @position_std_val.ability_val, max_overtime: @position_std_val.max_overtime, pos_inc_val: @position_std_val.pos_inc_val, pos_std_age: @position_std_val.pos_std_age, pos_val: @position_std_val.pos_val, position_name: @position_std_val.position_name } }
    end

    assert_redirected_to position_std_val_url(PositionStdVal.last)
  end

  test "should show position_std_val" do
    get position_std_val_url(@position_std_val)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_std_val_url(@position_std_val)
    assert_response :success
  end

  test "should update position_std_val" do
    patch position_std_val_url(@position_std_val), params: { position_std_val: { ability_val: @position_std_val.ability_val, max_overtime: @position_std_val.max_overtime, pos_inc_val: @position_std_val.pos_inc_val, pos_std_age: @position_std_val.pos_std_age, pos_val: @position_std_val.pos_val, position_name: @position_std_val.position_name } }
    assert_redirected_to position_std_val_url(@position_std_val)
  end

  test "should destroy position_std_val" do
    assert_difference('PositionStdVal.count', -1) do
      delete position_std_val_url(@position_std_val)
    end

    assert_redirected_to position_std_vals_url
  end
end
