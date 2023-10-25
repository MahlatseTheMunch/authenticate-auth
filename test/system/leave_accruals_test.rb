require "application_system_test_case"

class LeaveAccrualsTest < ApplicationSystemTestCase
  setup do
    @leave_accrual = leave_accruals(:one)
  end

  test "visiting the index" do
    visit leave_accruals_url
    assert_selector "h1", text: "Leave accruals"
  end

  test "should create leave accrual" do
    visit leave_accruals_url
    click_on "New leave accrual"

    fill_in "Days allocated", with: @leave_accrual.days_allocated
    fill_in "Employee", with: @leave_accrual.employee_id
    fill_in "Leave type", with: @leave_accrual.leave_type_id
    fill_in "Period type", with: @leave_accrual.period_type_id
    click_on "Create Leave accrual"

    assert_text "Leave accrual was successfully created"
    click_on "Back"
  end

  test "should update Leave accrual" do
    visit leave_accrual_url(@leave_accrual)
    click_on "Edit this leave accrual", match: :first

    fill_in "Days allocated", with: @leave_accrual.days_allocated
    fill_in "Employee", with: @leave_accrual.employee_id
    fill_in "Leave type", with: @leave_accrual.leave_type_id
    fill_in "Period type", with: @leave_accrual.period_type_id
    click_on "Update Leave accrual"

    assert_text "Leave accrual was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave accrual" do
    visit leave_accrual_url(@leave_accrual)
    click_on "Destroy this leave accrual", match: :first

    assert_text "Leave accrual was successfully destroyed"
  end
end
