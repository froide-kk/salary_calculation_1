require "application_system_test_case"

class PositionStdValsTest < ApplicationSystemTestCase
  setup do
    @position_std_val = position_std_vals(:one)
  end

  test "visiting the index" do
    visit position_std_vals_url
    assert_selector "h1", text: "Position Std Vals"
  end

  test "creating a Position std val" do
    visit position_std_vals_url
    click_on "New Position Std Val"

    fill_in "Ability Val", with: @position_std_val.ability_val
    fill_in "Max Overtime", with: @position_std_val.max_overtime
    fill_in "Pos Inc Val", with: @position_std_val.pos_inc_val
    fill_in "Pos Std Age", with: @position_std_val.pos_std_age
    fill_in "Pos Val", with: @position_std_val.pos_val
    fill_in "Position Name", with: @position_std_val.position_name
    click_on "Create Position std val"

    assert_text "Position std val was successfully created"
    click_on "Back"
  end

  test "updating a Position std val" do
    visit position_std_vals_url
    click_on "Edit", match: :first

    fill_in "Ability Val", with: @position_std_val.ability_val
    fill_in "Max Overtime", with: @position_std_val.max_overtime
    fill_in "Pos Inc Val", with: @position_std_val.pos_inc_val
    fill_in "Pos Std Age", with: @position_std_val.pos_std_age
    fill_in "Pos Val", with: @position_std_val.pos_val
    fill_in "Position Name", with: @position_std_val.position_name
    click_on "Update Position std val"

    assert_text "Position std val was successfully updated"
    click_on "Back"
  end

  test "destroying a Position std val" do
    visit position_std_vals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Position std val was successfully destroyed"
  end
end
