require "application_system_test_case"

class ElectricitiesTest < ApplicationSystemTestCase
  setup do
    @electricity = electricities(:one)
  end

  test "visiting the index" do
    visit electricities_url
    assert_selector "h1", text: "Electricities"
  end

  test "should create electricity" do
    visit electricities_url
    click_on "New electricity"

    fill_in "Company", with: @electricity.company
    fill_in "Consumerid", with: @electricity.consumerId
    fill_in "Customer", with: @electricity.customer_id
    click_on "Create Electricity"

    assert_text "Electricity was successfully created"
    click_on "Back"
  end

  test "should update Electricity" do
    visit electricity_url(@electricity)
    click_on "Edit this electricity", match: :first

    fill_in "Company", with: @electricity.company
    fill_in "Consumerid", with: @electricity.consumerId
    fill_in "Customer", with: @electricity.customer_id
    click_on "Update Electricity"

    assert_text "Electricity was successfully updated"
    click_on "Back"
  end

  test "should destroy Electricity" do
    visit electricity_url(@electricity)
    click_on "Destroy this electricity", match: :first

    assert_text "Electricity was successfully destroyed"
  end
end
