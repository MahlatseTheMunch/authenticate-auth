require "application_system_test_case"

class LeavesTest < ApplicationSystemTestCase
  setup do
    @leafe = leaves(:one)
  end

  test "visiting the index" do
    visit leaves_url
    assert_selector "h1", text: "Leaves"
  end

  test "should create leafe" do
    visit leaves_url
    click_on "New leafe"

    fill_in "Allocation type", with: @leafe.allocation_type_id
    fill_in "Comment", with: @leafe.comment
    fill_in "Description", with: @leafe.description
    fill_in "Employee", with: @leafe.employee_id
    fill_in "From date", with: @leafe.from_date
    check "From half" if @leafe.from_half
    fill_in "Leave status", with: @leafe.leave_status_id
    fill_in "Leave type", with: @leafe.leave_type_id
    fill_in "To date", with: @leafe.to_date
    check "To half" if @leafe.to_half
    fill_in "Total days", with: @leafe.total_days
    click_on "Create Leafe"

    assert_text "Leafe was successfully created"
    click_on "Back"
  end

  test "should update Leafe" do
    visit leafe_url(@leafe)
    click_on "Edit this leafe", match: :first

    fill_in "Allocation type", with: @leafe.allocation_type_id
    fill_in "Comment", with: @leafe.comment
    fill_in "Description", with: @leafe.description
    fill_in "Employee", with: @leafe.employee_id
    fill_in "From date", with: @leafe.from_date
    check "From half" if @leafe.from_half
    fill_in "Leave status", with: @leafe.leave_status_id
    fill_in "Leave type", with: @leafe.leave_type_id
    fill_in "To date", with: @leafe.to_date
    check "To half" if @leafe.to_half
    fill_in "Total days", with: @leafe.total_days
    click_on "Update Leafe"

    assert_text "Leafe was successfully updated"
    click_on "Back"
  end

  test "should destroy Leafe" do
    visit leafe_url(@leafe)
    click_on "Destroy this leafe", match: :first

    assert_text "Leafe was successfully destroyed"
  end
end
