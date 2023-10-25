require "application_system_test_case"

class EmployeeRolesTest < ApplicationSystemTestCase
  setup do
    @employee_role = employee_roles(:one)
  end

  test "visiting the index" do
    visit employee_roles_url
    assert_selector "h1", text: "Employee roles"
  end

  test "should create employee role" do
    visit employee_roles_url
    click_on "New employee role"

    fill_in "Employee", with: @employee_role.employee_id
    fill_in "Role", with: @employee_role.role_id
    click_on "Create Employee role"

    assert_text "Employee role was successfully created"
    click_on "Back"
  end

  test "should update Employee role" do
    visit employee_role_url(@employee_role)
    click_on "Edit this employee role", match: :first

    fill_in "Employee", with: @employee_role.employee_id
    fill_in "Role", with: @employee_role.role_id
    click_on "Update Employee role"

    assert_text "Employee role was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee role" do
    visit employee_role_url(@employee_role)
    click_on "Destroy this employee role", match: :first

    assert_text "Employee role was successfully destroyed"
  end
end
