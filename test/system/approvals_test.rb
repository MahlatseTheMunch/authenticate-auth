require "application_system_test_case"

class ApprovalsTest < ApplicationSystemTestCase
  setup do
    @approval = approvals(:one)
  end

  test "visiting the index" do
    visit approvals_url
    assert_selector "h1", text: "Approvals"
  end

  test "should create approval" do
    visit approvals_url
    click_on "New approval"

    fill_in "Comment", with: @approval.comment
    fill_in "Description", with: @approval.description
    fill_in "Employee", with: @approval.employee_id
    fill_in "From date", with: @approval.from_Date
    fill_in "Leave", with: @approval.leave_id
    fill_in "Leave status", with: @approval.leave_status_id
    fill_in "Leave type", with: @approval.leave_type_id
    fill_in "Sequence", with: @approval.sequence
    fill_in "To date", with: @approval.to_Date
    fill_in "Total days", with: @approval.total_Days
    click_on "Create Approval"

    assert_text "Approval was successfully created"
    click_on "Back"
  end

  test "should update Approval" do
    visit approval_url(@approval)
    click_on "Edit this approval", match: :first

    fill_in "Comment", with: @approval.comment
    fill_in "Description", with: @approval.description
    fill_in "Employee", with: @approval.employee_id
    fill_in "From date", with: @approval.from_Date
    fill_in "Leave", with: @approval.leave_id
    fill_in "Leave status", with: @approval.leave_status_id
    fill_in "Leave type", with: @approval.leave_type_id
    fill_in "Sequence", with: @approval.sequence
    fill_in "To date", with: @approval.to_Date
    fill_in "Total days", with: @approval.total_Days
    click_on "Update Approval"

    assert_text "Approval was successfully updated"
    click_on "Back"
  end

  test "should destroy Approval" do
    visit approval_url(@approval)
    click_on "Destroy this approval", match: :first

    assert_text "Approval was successfully destroyed"
  end
end
