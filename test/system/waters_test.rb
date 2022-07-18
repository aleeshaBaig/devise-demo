require "application_system_test_case"

class WatersTest < ApplicationSystemTestCase
  setup do
    @water = waters(:one)
  end

  test "visiting the index" do
    visit waters_url
    assert_selector "h1", text: "Waters"
  end

  test "should create water" do
    visit waters_url
    click_on "New water"

    fill_in "Company", with: @water.company
    fill_in "Consumerid", with: @water.consumerId
    fill_in "Customer", with: @water.customer_id
    click_on "Create Water"

    assert_text "Water was successfully created"
    click_on "Back"
  end

  test "should update Water" do
    visit water_url(@water)
    click_on "Edit this water", match: :first

    fill_in "Company", with: @water.company
    fill_in "Consumerid", with: @water.consumerId
    fill_in "Customer", with: @water.customer_id
    click_on "Update Water"

    assert_text "Water was successfully updated"
    click_on "Back"
  end

  test "should destroy Water" do
    visit water_url(@water)
    click_on "Destroy this water", match: :first

    assert_text "Water was successfully destroyed"
  end
end
