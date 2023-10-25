require "application_system_test_case"

class CategoryValuesTest < ApplicationSystemTestCase
  setup do
    @category_value = category_values(:one)
  end

  test "visiting the index" do
    visit category_values_url
    assert_selector "h1", text: "Category values"
  end

  test "should create category value" do
    visit category_values_url
    click_on "New category value"

    fill_in "Category", with: @category_value.category_id
    fill_in "Skhokho", with: @category_value.skhokho_id
    fill_in "Value", with: @category_value.value_id
    click_on "Create Category value"

    assert_text "Category value was successfully created"
    click_on "Back"
  end

  test "should update Category value" do
    visit category_value_url(@category_value)
    click_on "Edit this category value", match: :first

    fill_in "Category", with: @category_value.category_id
    fill_in "Skhokho", with: @category_value.skhokho_id
    fill_in "Value", with: @category_value.value_id
    click_on "Update Category value"

    assert_text "Category value was successfully updated"
    click_on "Back"
  end

  test "should destroy Category value" do
    visit category_value_url(@category_value)
    click_on "Destroy this category value", match: :first

    assert_text "Category value was successfully destroyed"
  end
end
