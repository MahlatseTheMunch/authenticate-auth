require "test_helper"

class LeaveStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_status = leave_statuses(:one)
  end

  test "should get index" do
    get leave_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_status_url
    assert_response :success
  end

  test "should create leave_status" do
    assert_difference("LeaveStatus.count") do
      post leave_statuses_url, params: { leave_status: { description: @leave_status.description } }
    end

    assert_redirected_to leave_status_url(LeaveStatus.last)
  end

  test "should show leave_status" do
    get leave_status_url(@leave_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_status_url(@leave_status)
    assert_response :success
  end

  test "should update leave_status" do
    patch leave_status_url(@leave_status), params: { leave_status: { description: @leave_status.description } }
    assert_redirected_to leave_status_url(@leave_status)
  end

  test "should destroy leave_status" do
    assert_difference("LeaveStatus.count", -1) do
      delete leave_status_url(@leave_status)
    end

    assert_redirected_to leave_statuses_url
  end
end
