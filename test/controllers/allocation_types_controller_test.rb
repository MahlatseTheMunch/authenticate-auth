require "test_helper"

class AllocationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allocation_type = allocation_types(:one)
  end

  test "should get index" do
    get allocation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_allocation_type_url
    assert_response :success
  end

  test "should create allocation_type" do
    assert_difference("AllocationType.count") do
      post allocation_types_url, params: { allocation_type: { description: @allocation_type.description } }
    end

    assert_redirected_to allocation_type_url(AllocationType.last)
  end

  test "should show allocation_type" do
    get allocation_type_url(@allocation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_allocation_type_url(@allocation_type)
    assert_response :success
  end

  test "should update allocation_type" do
    patch allocation_type_url(@allocation_type), params: { allocation_type: { description: @allocation_type.description } }
    assert_redirected_to allocation_type_url(@allocation_type)
  end

  test "should destroy allocation_type" do
    assert_difference("AllocationType.count", -1) do
      delete allocation_type_url(@allocation_type)
    end

    assert_redirected_to allocation_types_url
  end
end
