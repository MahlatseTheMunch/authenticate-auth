require "application_system_test_case"

class LeaveStatusesTest < ApplicationSystemTestCase
  setup do
    @leave_status = leave_statuses(:one)
  end

  test "visiting the index" do
    visit leave_statuses_url
    assert_selector "h1", text: "Leave statuses"
  end

  test "should create leave status" do
    visit leave_statuses_url
    click_on "New leave status"

    fill_in "Description", with: @leave_status.description
    click_on "Create Leave status"

    assert_text "Leave status was successfully created"
    click_on "Back"
  end

  test "should update Leave status" do
    visit leave_status_url(@leave_status)
    click_on "Edit this leave status", match: :first

    fill_in "Description", with: @leave_status.description
    click_on "Update Leave status"

    assert_text "Leave status was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave status" do
    visit leave_status_url(@leave_status)
    click_on "Destroy this leave status", match: :first

    assert_text "Leave status was successfully destroyed"
  end
end
