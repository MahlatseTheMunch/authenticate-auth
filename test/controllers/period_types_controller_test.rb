require "test_helper"

class PeriodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @period_type = period_types(:one)
  end

  test "should get index" do
    get period_types_url
    assert_response :success
  end

  test "should get new" do
    get new_period_type_url
    assert_response :success
  end

  test "should create period_type" do
    assert_difference("PeriodType.count") do
      post period_types_url, params: { period_type: { description: @period_type.description } }
    end

    assert_redirected_to period_type_url(PeriodType.last)
  end

  test "should show period_type" do
    get period_type_url(@period_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_period_type_url(@period_type)
    assert_response :success
  end

  test "should update period_type" do
    patch period_type_url(@period_type), params: { period_type: { description: @period_type.description } }
    assert_redirected_to period_type_url(@period_type)
  end

  test "should destroy period_type" do
    assert_difference("PeriodType.count", -1) do
      delete period_type_url(@period_type)
    end

    assert_redirected_to period_types_url
  end
end
