require "test_helper"

class LeaveAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leave_attachment = leave_attachments(:one)
  end

  test "should get index" do
    get leave_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_leave_attachment_url
    assert_response :success
  end

  test "should create leave_attachment" do
    assert_difference("LeaveAttachment.count") do
      post leave_attachments_url, params: { leave_attachment: { attachment_link: @leave_attachment.attachment_link, filename: @leave_attachment.filename, leave_id: @leave_attachment.leave_id } }
    end

    assert_redirected_to leave_attachment_url(LeaveAttachment.last)
  end

  test "should show leave_attachment" do
    get leave_attachment_url(@leave_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_leave_attachment_url(@leave_attachment)
    assert_response :success
  end

  test "should update leave_attachment" do
    patch leave_attachment_url(@leave_attachment), params: { leave_attachment: { attachment_link: @leave_attachment.attachment_link, filename: @leave_attachment.filename, leave_id: @leave_attachment.leave_id } }
    assert_redirected_to leave_attachment_url(@leave_attachment)
  end

  test "should destroy leave_attachment" do
    assert_difference("LeaveAttachment.count", -1) do
      delete leave_attachment_url(@leave_attachment)
    end

    assert_redirected_to leave_attachments_url
  end
end
