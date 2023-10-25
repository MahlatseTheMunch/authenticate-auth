require "application_system_test_case"

class SkhokhosTest < ApplicationSystemTestCase
  setup do
    @skhokho = skhokhos(:one)
  end

  test "visiting the index" do
    visit skhokhos_url
    assert_selector "h1", text: "Skhokhos"
  end

  test "should create skhokho" do
    visit skhokhos_url
    click_on "New skhokho"

    fill_in "Carddate", with: @skhokho.cardDate
    fill_in "Comment", with: @skhokho.comment
    fill_in "Employee", with: @skhokho.employee_id
    check "Processed" if @skhokho.processed
    fill_in "Skhokhocreator", with: @skhokho.skhokhoCreator
    fill_in "Voucher", with: @skhokho.voucher_id
    click_on "Create Skhokho"

    assert_text "Skhokho was successfully created"
    click_on "Back"
  end

  test "should update Skhokho" do
    visit skhokho_url(@skhokho)
    click_on "Edit this skhokho", match: :first

    fill_in "Carddate", with: @skhokho.cardDate
    fill_in "Comment", with: @skhokho.comment
    fill_in "Employee", with: @skhokho.employee_id
    check "Processed" if @skhokho.processed
    fill_in "Skhokhocreator", with: @skhokho.skhokhoCreator
    fill_in "Voucher", with: @skhokho.voucher_id
    click_on "Update Skhokho"

    assert_text "Skhokho was successfully updated"
    click_on "Back"
  end

  test "should destroy Skhokho" do
    visit skhokho_url(@skhokho)
    click_on "Destroy this skhokho", match: :first

    assert_text "Skhokho was successfully destroyed"
  end
end
