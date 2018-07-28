require "application_system_test_case"

class TaskStdValsTest < ApplicationSystemTestCase
  setup do
    @task_std_val = task_std_vals(:one)
  end

  test "visiting the index" do
    visit task_std_vals_url
    assert_selector "h1", text: "Task Std Vals"
  end

  test "creating a Task std val" do
    visit task_std_vals_url
    click_on "New Task Std Val"

    fill_in "Task Name", with: @task_std_val.task_name
    fill_in "Task Val", with: @task_std_val.task_val
    click_on "Create Task std val"

    assert_text "Task std val was successfully created"
    click_on "Back"
  end

  test "updating a Task std val" do
    visit task_std_vals_url
    click_on "Edit", match: :first

    fill_in "Task Name", with: @task_std_val.task_name
    fill_in "Task Val", with: @task_std_val.task_val
    click_on "Update Task std val"

    assert_text "Task std val was successfully updated"
    click_on "Back"
  end

  test "destroying a Task std val" do
    visit task_std_vals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task std val was successfully destroyed"
  end
end
