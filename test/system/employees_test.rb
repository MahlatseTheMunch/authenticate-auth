require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Birthday", with: @employee.birthday
    fill_in "Email", with: @employee.email
    fill_in "Hired date", with: @employee.hired_date
    check "Isactive" if @employee.isActive
    check "Isadmin" if @employee.isAdmin
    fill_in "Line manager", with: @employee.line_manager_id
    fill_in "Name", with: @employee.name
    fill_in "Password", with: @employee.password
    fill_in "Region", with: @employee.region_id
    fill_in "Surname", with: @employee.surname
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Birthday", with: @employee.birthday
    fill_in "Email", with: @employee.email
    fill_in "Hired date", with: @employee.hired_date
    check "Isactive" if @employee.isActive
    check "Isadmin" if @employee.isAdmin
    fill_in "Line manager", with: @employee.line_manager_id
    fill_in "Name", with: @employee.name
    fill_in "Password", with: @employee.password
    fill_in "Region", with: @employee.region_id
    fill_in "Surname", with: @employee.surname
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end
