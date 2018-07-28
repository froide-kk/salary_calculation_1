require "application_system_test_case"

class SalariesTest < ApplicationSystemTestCase
  setup do
    @salary = salaries(:one)
  end

  test "visiting the index" do
    visit salaries_url
    assert_selector "h1", text: "Salaries"
  end

  test "creating a Salary" do
    visit salaries_url
    click_on "New Salary"

    fill_in "Ability Sal", with: @salary.ability_sal
    fill_in "Basic Sal", with: @salary.basic_sal
    fill_in "Diff Hour Sal", with: @salary.diff_hour_sal
    fill_in "Diff Total Sal", with: @salary.diff_total_sal
    fill_in "Emp", with: @salary.emp_id
    fill_in "Fam Sal", with: @salary.fam_sal
    fill_in "Hour Sal", with: @salary.hour_sal
    fill_in "Last Hour Sal", with: @salary.last_hour_sal
    fill_in "Last Rate", with: @salary.last_rate
    fill_in "Last Total Sal", with: @salary.last_total_sal
    fill_in "Over Hour Sal", with: @salary.over_hour_sal
    fill_in "Over Sal", with: @salary.over_sal
    fill_in "Position Sal", with: @salary.position_sal
    fill_in "Praise Sal", with: @salary.praise_sal
    fill_in "Rate", with: @salary.rate
    fill_in "Residence Spt Sal", with: @salary.residence_spt_sal
    fill_in "Standard Sal", with: @salary.standard_sal
    fill_in "Task Sal", with: @salary.task_sal
    fill_in "Total Sal", with: @salary.total_sal
    click_on "Create Salary"

    assert_text "Salary was successfully created"
    click_on "Back"
  end

  test "updating a Salary" do
    visit salaries_url
    click_on "Edit", match: :first

    fill_in "Ability Sal", with: @salary.ability_sal
    fill_in "Basic Sal", with: @salary.basic_sal
    fill_in "Diff Hour Sal", with: @salary.diff_hour_sal
    fill_in "Diff Total Sal", with: @salary.diff_total_sal
    fill_in "Emp", with: @salary.emp_id
    fill_in "Fam Sal", with: @salary.fam_sal
    fill_in "Hour Sal", with: @salary.hour_sal
    fill_in "Last Hour Sal", with: @salary.last_hour_sal
    fill_in "Last Rate", with: @salary.last_rate
    fill_in "Last Total Sal", with: @salary.last_total_sal
    fill_in "Over Hour Sal", with: @salary.over_hour_sal
    fill_in "Over Sal", with: @salary.over_sal
    fill_in "Position Sal", with: @salary.position_sal
    fill_in "Praise Sal", with: @salary.praise_sal
    fill_in "Rate", with: @salary.rate
    fill_in "Residence Spt Sal", with: @salary.residence_spt_sal
    fill_in "Standard Sal", with: @salary.standard_sal
    fill_in "Task Sal", with: @salary.task_sal
    fill_in "Total Sal", with: @salary.total_sal
    click_on "Update Salary"

    assert_text "Salary was successfully updated"
    click_on "Back"
  end

  test "destroying a Salary" do
    visit salaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salary was successfully destroyed"
  end
end
