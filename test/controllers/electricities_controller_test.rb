require "test_helper"

class ElectricitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electricity = electricities(:one)
  end

  test "should get index" do
    get electricities_url
    assert_response :success
  end

  test "should get new" do
    get new_electricity_url
    assert_response :success
  end

  test "should create electricity" do
    assert_difference("Electricity.count") do
      post electricities_url, params: { electricity: { company: @electricity.company, consumerId: @electricity.consumerId, customer_id: @electricity.customer_id } }
    end

    assert_redirected_to electricity_url(Electricity.last)
  end

  test "should show electricity" do
    get electricity_url(@electricity)
    assert_response :success
  end

  test "should get edit" do
    get edit_electricity_url(@electricity)
    assert_response :success
  end

  test "should update electricity" do
    patch electricity_url(@electricity), params: { electricity: { company: @electricity.company, consumerId: @electricity.consumerId, customer_id: @electricity.customer_id } }
    assert_redirected_to electricity_url(@electricity)
  end

  test "should destroy electricity" do
    assert_difference("Electricity.count", -1) do
      delete electricity_url(@electricity)
    end

    assert_redirected_to electricities_url
  end
end
