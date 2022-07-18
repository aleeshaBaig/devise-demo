require "application_system_test_case"

class InternetsTest < ApplicationSystemTestCase
  setup do
    @internet = internets(:one)
  end

  test "visiting the index" do
    visit internets_url
    assert_selector "h1", text: "Internets"
  end

  test "should create internet" do
    visit internets_url
    click_on "New internet"

    fill_in "Company", with: @internet.company
    fill_in "Consumerid", with: @internet.consumerId
    fill_in "Customer", with: @internet.customer_id
    click_on "Create Internet"

    assert_text "Internet was successfully created"
    click_on "Back"
  end

  test "should update Internet" do
    visit internet_url(@internet)
    click_on "Edit this internet", match: :first

    fill_in "Company", with: @internet.company
    fill_in "Consumerid", with: @internet.consumerId
    fill_in "Customer", with: @internet.customer_id
    click_on "Update Internet"

    assert_text "Internet was successfully updated"
    click_on "Back"
  end

  test "should destroy Internet" do
    visit internet_url(@internet)
    click_on "Destroy this internet", match: :first

    assert_text "Internet was successfully destroyed"
  end
end
