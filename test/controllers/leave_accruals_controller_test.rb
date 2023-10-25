require "test_helper"

class LeaveAccrualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_accrual = leave_accruals(:one)
  end

  test "should get index" do
    get leave_accruals_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_accrual_url
    assert_response :success
  end

  test "should create leave_accrual" do
    assert_difference("LeaveAccrual.count") do
      post leave_accruals_url, params: { leave_accrual: { days_allocated: @leave_accrual.days_allocated, employee_id: @leave_accrual.employee_id, leave_type_id: @leave_accrual.leave_type_id, period_type_id: @leave_accrual.period_type_id } }
    end

    assert_redirected_to leave_accrual_url(LeaveAccrual.last)
  end

  test "should show leave_accrual" do
    get leave_accrual_url(@leave_accrual)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_accrual_url(@leave_accrual)
    assert_response :success
  end

  test "should update leave_accrual" do
    patch leave_accrual_url(@leave_accrual), params: { leave_accrual: { days_allocated: @leave_accrual.days_allocated, employee_id: @leave_accrual.employee_id, leave_type_id: @leave_accrual.leave_type_id, period_type_id: @leave_accrual.period_type_id } }
    assert_redirected_to leave_accrual_url(@leave_accrual)
  end

  test "should destroy leave_accrual" do
    assert_difference("LeaveAccrual.count", -1) do
      delete leave_accrual_url(@leave_accrual)
    end

    assert_redirected_to leave_accruals_url
  end
end
