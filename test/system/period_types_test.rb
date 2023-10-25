require "application_system_test_case"

class PeriodTypesTest < ApplicationSystemTestCase
  setup do
    @period_type = period_types(:one)
  end

  test "visiting the index" do
    visit period_types_url
    assert_selector "h1", text: "Period types"
  end

  test "should create period type" do
    visit period_types_url
    click_on "New period type"

    fill_in "Description", with: @period_type.description
    click_on "Create Period type"

    assert_text "Period type was successfully created"
    click_on "Back"
  end

  test "should update Period type" do
    visit period_type_url(@period_type)
    click_on "Edit this period type", match: :first

    fill_in "Description", with: @period_type.description
    click_on "Update Period type"

    assert_text "Period type was successfully updated"
    click_on "Back"
  end

  test "should destroy Period type" do
    visit period_type_url(@period_type)
    click_on "Destroy this period type", match: :first

    assert_text "Period type was successfully destroyed"
  end
end
