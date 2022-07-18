require "test_helper"

class SuigasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suiga = suigas(:one)
  end

  test "should get index" do
    get suigas_url
    assert_response :success
  end

  test "should get new" do
    get new_suiga_url
    assert_response :success
  end

  test "should create suiga" do
    assert_difference("Suiga.count") do
      post suigas_url, params: { suiga: { company: @suiga.company, consumerId: @suiga.consumerId, customer_id: @suiga.customer_id } }
    end

    assert_redirected_to suiga_url(Suiga.last)
  end

  test "should show suiga" do
    get suiga_url(@suiga)
    assert_response :success
  end

  test "should get edit" do
    get edit_suiga_url(@suiga)
    assert_response :success
  end

  test "should update suiga" do
    patch suiga_url(@suiga), params: { suiga: { company: @suiga.company, consumerId: @suiga.consumerId, customer_id: @suiga.customer_id } }
    assert_redirected_to suiga_url(@suiga)
  end

  test "should destroy suiga" do
    assert_difference("Suiga.count", -1) do
      delete suiga_url(@suiga)
    end

    assert_redirected_to suigas_url
  end
end
