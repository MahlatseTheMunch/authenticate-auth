require "application_system_test_case"

class AllocationTypesTest < ApplicationSystemTestCase
  setup do
    @allocation_type = allocation_types(:one)
  end

  test "visiting the index" do
    visit allocation_types_url
    assert_selector "h1", text: "Allocation types"
  end

  test "should create allocation type" do
    visit allocation_types_url
    click_on "New allocation type"

    fill_in "Description", with: @allocation_type.description
    click_on "Create Allocation type"

    assert_text "Allocation type was successfully created"
    click_on "Back"
  end

  test "should update Allocation type" do
    visit allocation_type_url(@allocation_type)
    click_on "Edit this allocation type", match: :first

    fill_in "Description", with: @allocation_type.description
    click_on "Update Allocation type"

    assert_text "Allocation type was successfully updated"
    click_on "Back"
  end

  test "should destroy Allocation type" do
    visit allocation_type_url(@allocation_type)
    click_on "Destroy this allocation type", match: :first

    assert_text "Allocation type was successfully destroyed"
  end
end
