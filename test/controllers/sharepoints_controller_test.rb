require "test_helper"

class SharepointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sharepoint = sharepoints(:one)
  end

  test "should get index" do
    get sharepoints_url
    assert_response :success
  end

  test "should get new" do
    get new_sharepoint_url
    assert_response :success
  end

  test "should create sharepoint" do
    assert_difference("Sharepoint.count") do
      post sharepoints_url, params: { sharepoint: {  } }
    end

    assert_redirected_to sharepoint_url(Sharepoint.last)
  end

  test "should show sharepoint" do
    get sharepoint_url(@sharepoint)
    assert_response :success
  end

  test "should get edit" do
    get edit_sharepoint_url(@sharepoint)
    assert_response :success
  end

  test "should update sharepoint" do
    patch sharepoint_url(@sharepoint), params: { sharepoint: {  } }
    assert_redirected_to sharepoint_url(@sharepoint)
  end

  test "should destroy sharepoint" do
    assert_difference("Sharepoint.count", -1) do
      delete sharepoint_url(@sharepoint)
    end

    assert_redirected_to sharepoints_url
  end
end
