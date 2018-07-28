require "application_system_test_case"

class PointsTest < ApplicationSystemTestCase
  setup do
    @point = points(:one)
  end

  test "visiting the index" do
    visit points_url
    assert_selector "h1", text: "Points"
  end

  test "creating a Point" do
    visit points_url
    click_on "New Point"

    fill_in "Adjustment", with: @point.adjustment
    fill_in "Age Ad", with: @point.age_ad
    fill_in "Emp", with: @point.emp_id
    fill_in "Eval Mgm", with: @point.eval_mgm
    fill_in "Eval Tec", with: @point.eval_tec
    fill_in "Health", with: @point.health
    fill_in "Is Short Work", with: @point.is_short_work
    fill_in "Isms", with: @point.isms
    fill_in "Overtime", with: @point.overtime
    fill_in "Small Group", with: @point.small_group
    click_on "Create Point"

    assert_text "Point was successfully created"
    click_on "Back"
  end

  test "updating a Point" do
    visit points_url
    click_on "Edit", match: :first

    fill_in "Adjustment", with: @point.adjustment
    fill_in "Age Ad", with: @point.age_ad
    fill_in "Emp", with: @point.emp_id
    fill_in "Eval Mgm", with: @point.eval_mgm
    fill_in "Eval Tec", with: @point.eval_tec
    fill_in "Health", with: @point.health
    fill_in "Is Short Work", with: @point.is_short_work
    fill_in "Isms", with: @point.isms
    fill_in "Overtime", with: @point.overtime
    fill_in "Small Group", with: @point.small_group
    click_on "Update Point"

    assert_text "Point was successfully updated"
    click_on "Back"
  end

  test "destroying a Point" do
    visit points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Point was successfully destroyed"
  end
end
