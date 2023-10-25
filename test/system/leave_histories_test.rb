require "application_system_test_case"

class LeaveHistoriesTest < ApplicationSystemTestCase
  setup do
    @leave_history = leave_histories(:one)
  end

  test "visiting the index" do
    visit leave_histories_url
    assert_selector "h1", text: "Leave histories"
  end

  test "should create leave history" do
    visit leave_histories_url
    click_on "New leave history"

    fill_in "Comment", with: @leave_history.comment
    fill_in "Description", with: @leave_history.description
    fill_in "Leave", with: @leave_history.leave_id
    fill_in "Leave status", with: @leave_history.leave_status_id
    click_on "Create Leave history"

    assert_text "Leave history was successfully created"
    click_on "Back"
  end

  test "should update Leave history" do
    visit leave_history_url(@leave_history)
    click_on "Edit this leave history", match: :first

    fill_in "Comment", with: @leave_history.comment
    fill_in "Description", with: @leave_history.description
    fill_in "Leave", with: @leave_history.leave_id
    fill_in "Leave status", with: @leave_history.leave_status_id
    click_on "Update Leave history"

    assert_text "Leave history was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave history" do
    visit leave_history_url(@leave_history)
    click_on "Destroy this leave history", match: :first

    assert_text "Leave history was successfully destroyed"
  end
end
