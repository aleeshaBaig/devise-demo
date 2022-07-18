require "application_system_test_case"

class SuigasTest < ApplicationSystemTestCase
  setup do
    @suiga = suigas(:one)
  end

  test "visiting the index" do
    visit suigas_url
    assert_selector "h1", text: "Suigas"
  end

  test "should create suiga" do
    visit suigas_url
    click_on "New suiga"

    fill_in "Company", with: @suiga.company
    fill_in "Consumerid", with: @suiga.consumerId
    fill_in "Customer", with: @suiga.customer_id
    click_on "Create Suiga"

    assert_text "Suiga was successfully created"
    click_on "Back"
  end

  test "should update Suiga" do
    visit suiga_url(@suiga)
    click_on "Edit this suiga", match: :first

    fill_in "Company", with: @suiga.company
    fill_in "Consumerid", with: @suiga.consumerId
    fill_in "Customer", with: @suiga.customer_id
    click_on "Update Suiga"

    assert_text "Suiga was successfully updated"
    click_on "Back"
  end

  test "should destroy Suiga" do
    visit suiga_url(@suiga)
    click_on "Destroy this suiga", match: :first

    assert_text "Suiga was successfully destroyed"
  end
end
