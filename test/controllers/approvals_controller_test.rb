require "test_helper"

class ApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approval = approvals(:one)
  end

  test "should get index" do
    get approvals_url
    assert_response :success
  end

  test "should get new" do
    get new_approval_url
    assert_response :success
  end

  test "should create approval" do
    assert_difference("Approval.count") do
      post approvals_url, params: { approval: { comment: @approval.comment, description: @approval.description, employee_id: @approval.employee_id, from_Date: @approval.from_Date, leave_id: @approval.leave_id, leave_status_id: @approval.leave_status_id, leave_type_id: @approval.leave_type_id, sequence: @approval.sequence, to_Date: @approval.to_Date, total_Days: @approval.total_Days } }
    end

    assert_redirected_to approval_url(Approval.last)
  end

  test "should show approval" do
    get approval_url(@approval)
    assert_response :success
  end

  test "should get edit" do
    get edit_approval_url(@approval)
    assert_response :success
  end

  test "should update approval" do
    patch approval_url(@approval), params: { approval: { comment: @approval.comment, description: @approval.description, employee_id: @approval.employee_id, from_Date: @approval.from_Date, leave_id: @approval.leave_id, leave_status_id: @approval.leave_status_id, leave_type_id: @approval.leave_type_id, sequence: @approval.sequence, to_Date: @approval.to_Date, total_Days: @approval.total_Days } }
    assert_redirected_to approval_url(@approval)
  end

  test "should destroy approval" do
    assert_difference("Approval.count", -1) do
      delete approval_url(@approval)
    end

    assert_redirected_to approvals_url
  end
end
