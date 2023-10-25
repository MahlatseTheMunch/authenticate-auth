require "application_system_test_case"

class LeaveAttachmentsTest < ApplicationSystemTestCase
  setup do
    @leave_attachment = leave_attachments(:one)
  end

  test "visiting the index" do
    visit leave_attachments_url
    assert_selector "h1", text: "Leave attachments"
  end

  test "should create leave attachment" do
    visit leave_attachments_url
    click_on "New leave attachment"

    fill_in "Attachment link", with: @leave_attachment.attachment_link
    fill_in "Filename", with: @leave_attachment.filename
    fill_in "Leave", with: @leave_attachment.leave_id
    click_on "Create Leave attachment"

    assert_text "Leave attachment was successfully created"
    click_on "Back"
  end

  test "should update Leave attachment" do
    visit leave_attachment_url(@leave_attachment)
    click_on "Edit this leave attachment", match: :first

    fill_in "Attachment link", with: @leave_attachment.attachment_link
    fill_in "Filename", with: @leave_attachment.filename
    fill_in "Leave", with: @leave_attachment.leave_id
    click_on "Update Leave attachment"

    assert_text "Leave attachment was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave attachment" do
    visit leave_attachment_url(@leave_attachment)
    click_on "Destroy this leave attachment", match: :first

    assert_text "Leave attachment was successfully destroyed"
  end
end
