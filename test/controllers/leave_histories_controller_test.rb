require "test_helper"

class LeaveHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_history = leave_histories(:one)
  end

  test "should get index" do
    get leave_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_history_url
    assert_response :success
  end

  test "should create leave_history" do
    assert_difference("LeaveHistory.count") do
      post leave_histories_url, params: { leave_history: { comment: @leave_history.comment, description: @leave_history.description, leave_id: @leave_history.leave_id, leave_status_id: @leave_history.leave_status_id } }
    end

    assert_redirected_to leave_history_url(LeaveHistory.last)
  end

  test "should show leave_history" do
    get leave_history_url(@leave_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_history_url(@leave_history)
    assert_response :success
  end

  test "should update leave_history" do
    patch leave_history_url(@leave_history), params: { leave_history: { comment: @leave_history.comment, description: @leave_history.description, leave_id: @leave_history.leave_id, leave_status_id: @leave_history.leave_status_id } }
    assert_redirected_to leave_history_url(@leave_history)
  end

  test "should destroy leave_history" do
    assert_difference("LeaveHistory.count", -1) do
      delete leave_history_url(@leave_history)
    end

    assert_redirected_to leave_histories_url
  end
end
