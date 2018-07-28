require "application_system_test_case"

class EvaluationStdValsTest < ApplicationSystemTestCase
  setup do
    @evaluation_std_val = evaluation_std_vals(:one)
  end

  test "visiting the index" do
    visit evaluation_std_vals_url
    assert_selector "h1", text: "Evaluation Std Vals"
  end

  test "creating a Evaluation std val" do
    visit evaluation_std_vals_url
    click_on "New Evaluation Std Val"

    fill_in "Eval Name", with: @evaluation_std_val.eval_name
    fill_in "Eval Val", with: @evaluation_std_val.eval_val
    click_on "Create Evaluation std val"

    assert_text "Evaluation std val was successfully created"
    click_on "Back"
  end

  test "updating a Evaluation std val" do
    visit evaluation_std_vals_url
    click_on "Edit", match: :first

    fill_in "Eval Name", with: @evaluation_std_val.eval_name
    fill_in "Eval Val", with: @evaluation_std_val.eval_val
    click_on "Update Evaluation std val"

    assert_text "Evaluation std val was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluation std val" do
    visit evaluation_std_vals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluation std val was successfully destroyed"
  end
end
