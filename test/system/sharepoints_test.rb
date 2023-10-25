require "application_system_test_case"

class SharepointsTest < ApplicationSystemTestCase
  setup do
    @sharepoint = sharepoints(:one)
  end

  test "visiting the index" do
    visit sharepoints_url
    assert_selector "h1", text: "Sharepoints"
  end

  test "should create sharepoint" do
    visit sharepoints_url
    click_on "New sharepoint"

    click_on "Create Sharepoint"

    assert_text "Sharepoint was successfully created"
    click_on "Back"
  end

  test "should update Sharepoint" do
    visit sharepoint_url(@sharepoint)
    click_on "Edit this sharepoint", match: :first

    click_on "Update Sharepoint"

    assert_text "Sharepoint was successfully updated"
    click_on "Back"
  end

  test "should destroy Sharepoint" do
    visit sharepoint_url(@sharepoint)
    click_on "Destroy this sharepoint", match: :first

    assert_text "Sharepoint was successfully destroyed"
  end
end
