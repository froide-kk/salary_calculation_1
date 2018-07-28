require "application_system_test_case"

class EtcStdValsTest < ApplicationSystemTestCase
  setup do
    @etc_std_val = etc_std_vals(:one)
  end

  test "visiting the index" do
    visit etc_std_vals_url
    assert_selector "h1", text: "Etc Std Vals"
  end

  test "creating a Etc std val" do
    visit etc_std_vals_url
    click_on "New Etc Std Val"

    fill_in "Holiday Val", with: @etc_std_val.holiday_val
    fill_in "Mon Avg Worktime", with: @etc_std_val.mon_avg_worktime
    fill_in "Mon Short Worktime", with: @etc_std_val.mon_short_worktime
    fill_in "Praise Val", with: @etc_std_val.praise_val
    fill_in "Std Salary Val", with: @etc_std_val.std_salary_val
    click_on "Create Etc std val"

    assert_text "Etc std val was successfully created"
    click_on "Back"
  end

  test "updating a Etc std val" do
    visit etc_std_vals_url
    click_on "Edit", match: :first

    fill_in "Holiday Val", with: @etc_std_val.holiday_val
    fill_in "Mon Avg Worktime", with: @etc_std_val.mon_avg_worktime
    fill_in "Mon Short Worktime", with: @etc_std_val.mon_short_worktime
    fill_in "Praise Val", with: @etc_std_val.praise_val
    fill_in "Std Salary Val", with: @etc_std_val.std_salary_val
    click_on "Update Etc std val"

    assert_text "Etc std val was successfully updated"
    click_on "Back"
  end

  test "destroying a Etc std val" do
    visit etc_std_vals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Etc std val was successfully destroyed"
  end
end
