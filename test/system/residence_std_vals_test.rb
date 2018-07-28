require "application_system_test_case"

class ResidenceStdValsTest < ApplicationSystemTestCase
  setup do
    @residence_std_val = residence_std_vals(:one)
  end

  test "visiting the index" do
    visit residence_std_vals_url
    assert_selector "h1", text: "Residence Std Vals"
  end

  test "creating a Residence std val" do
    visit residence_std_vals_url
    click_on "New Residence Std Val"

    fill_in "Residence Name", with: @residence_std_val.residence_name
    fill_in "Residence Spt Val", with: @residence_std_val.residence_spt_val
    click_on "Create Residence std val"

    assert_text "Residence std val was successfully created"
    click_on "Back"
  end

  test "updating a Residence std val" do
    visit residence_std_vals_url
    click_on "Edit", match: :first

    fill_in "Residence Name", with: @residence_std_val.residence_name
    fill_in "Residence Spt Val", with: @residence_std_val.residence_spt_val
    click_on "Update Residence std val"

    assert_text "Residence std val was successfully updated"
    click_on "Back"
  end

  test "destroying a Residence std val" do
    visit residence_std_vals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residence std val was successfully destroyed"
  end
end
