require "test_helper"

class LeavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leafe = leaves(:one)
  end

  test "should get index" do
    get leaves_url
    assert_response :success
  end

  test "should get new" do
    get new_leafe_url
    assert_response :success
  end

  test "should create leafe" do
    assert_difference("Leafe.count") do
      post leaves_url, params: { leafe: { allocation_type_id: @leafe.allocation_type_id, comment: @leafe.comment, description: @leafe.description, employee_id: @leafe.employee_id, from_date: @leafe.from_date, from_half: @leafe.from_half, leave_status_id: @leafe.leave_status_id, leave_type_id: @leafe.leave_type_id, to_date: @leafe.to_date, to_half: @leafe.to_half, total_days: @leafe.total_days } }
    end

    assert_redirected_to leafe_url(Leafe.last)
  end

  test "should show leafe" do
    get leafe_url(@leafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_leafe_url(@leafe)
    assert_response :success
  end

  test "should update leafe" do
    patch leafe_url(@leafe), params: { leafe: { allocation_type_id: @leafe.allocation_type_id, comment: @leafe.comment, description: @leafe.description, employee_id: @leafe.employee_id, from_date: @leafe.from_date, from_half: @leafe.from_half, leave_status_id: @leafe.leave_status_id, leave_type_id: @leafe.leave_type_id, to_date: @leafe.to_date, to_half: @leafe.to_half, total_days: @leafe.total_days } }
    assert_redirected_to leafe_url(@leafe)
  end

  test "should destroy leafe" do
    assert_difference("Leafe.count", -1) do
      delete leafe_url(@leafe)
    end

    assert_redirected_to leaves_url
  end
end
