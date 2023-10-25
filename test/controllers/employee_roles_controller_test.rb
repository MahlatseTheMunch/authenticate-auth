require "test_helper"

class EmployeeRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_role = employee_roles(:one)
  end

  test "should get index" do
    get employee_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_role_url
    assert_response :success
  end

  test "should create employee_role" do
    assert_difference("EmployeeRole.count") do
      post employee_roles_url, params: { employee_role: { employee_id: @employee_role.employee_id, role_id: @employee_role.role_id } }
    end

    assert_redirected_to employee_role_url(EmployeeRole.last)
  end

  test "should show employee_role" do
    get employee_role_url(@employee_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_role_url(@employee_role)
    assert_response :success
  end

  test "should update employee_role" do
    patch employee_role_url(@employee_role), params: { employee_role: { employee_id: @employee_role.employee_id, role_id: @employee_role.role_id } }
    assert_redirected_to employee_role_url(@employee_role)
  end

  test "should destroy employee_role" do
    assert_difference("EmployeeRole.count", -1) do
      delete employee_role_url(@employee_role)
    end

    assert_redirected_to employee_roles_url
  end
end
