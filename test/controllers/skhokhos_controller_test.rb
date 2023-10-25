require "test_helper"

class SkhokhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skhokho = skhokhos(:one)
  end

  test "should get index" do
    get skhokhos_url
    assert_response :success
  end

  test "should get new" do
    get new_skhokho_url
    assert_response :success
  end

  test "should create skhokho" do
    assert_difference("Skhokho.count") do
      post skhokhos_url, params: { skhokho: { cardDate: @skhokho.cardDate, comment: @skhokho.comment, employee_id: @skhokho.employee_id, processed: @skhokho.processed, skhokhoCreator: @skhokho.skhokhoCreator, voucher_id: @skhokho.voucher_id } }
    end

    assert_redirected_to skhokho_url(Skhokho.last)
  end

  test "should show skhokho" do
    get skhokho_url(@skhokho)
    assert_response :success
  end

  test "should get edit" do
    get edit_skhokho_url(@skhokho)
    assert_response :success
  end

  test "should update skhokho" do
    patch skhokho_url(@skhokho), params: { skhokho: { cardDate: @skhokho.cardDate, comment: @skhokho.comment, employee_id: @skhokho.employee_id, processed: @skhokho.processed, skhokhoCreator: @skhokho.skhokhoCreator, voucher_id: @skhokho.voucher_id } }
    assert_redirected_to skhokho_url(@skhokho)
  end

  test "should destroy skhokho" do
    assert_difference("Skhokho.count", -1) do
      delete skhokho_url(@skhokho)
    end

    assert_redirected_to skhokhos_url
  end
end
