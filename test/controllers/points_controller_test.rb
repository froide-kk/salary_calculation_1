require 'test_helper'

class PointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @point = points(:one)
  end

  test "should get index" do
    get points_url
    assert_response :success
  end

  test "should get new" do
    get new_point_url
    assert_response :success
  end

  test "should create point" do
    assert_difference('Point.count') do
      post points_url, params: { point: { adjustment: @point.adjustment, age_ad: @point.age_ad, emp_id: @point.emp_id, eval_mgm: @point.eval_mgm, eval_tec: @point.eval_tec, health: @point.health, is_short_work: @point.is_short_work, isms: @point.isms, overtime: @point.overtime, small_group: @point.small_group } }
    end

    assert_redirected_to point_url(Point.last)
  end

  test "should show point" do
    get point_url(@point)
    assert_response :success
  end

  test "should get edit" do
    get edit_point_url(@point)
    assert_response :success
  end

  test "should update point" do
    patch point_url(@point), params: { point: { adjustment: @point.adjustment, age_ad: @point.age_ad, emp_id: @point.emp_id, eval_mgm: @point.eval_mgm, eval_tec: @point.eval_tec, health: @point.health, is_short_work: @point.is_short_work, isms: @point.isms, overtime: @point.overtime, small_group: @point.small_group } }
    assert_redirected_to point_url(@point)
  end

  test "should destroy point" do
    assert_difference('Point.count', -1) do
      delete point_url(@point)
    end

    assert_redirected_to points_url
  end
end
