require "test_helper"

class NbasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba = nbas(:one)
  end

  test "should get index" do
    get nbas_url
    assert_response :success
  end

  test "should get new" do
    get new_nba_url
    assert_response :success
  end

  test "should create nba" do
    assert_difference("Nba.count") do
      post nbas_url, params: { nba: { abs_at: @nba.abs_at, compiled_at: @nba.compiled_at, customer_id: @nba.customer_id, deadline: @nba.deadline, deadline_option: @nba.deadline_option, filed_at: @nba.filed_at, indian_application_number: @nba.indian_application_number, nba_number: @nba.nba_number, title: @nba.title } }
    end

    assert_redirected_to nba_url(Nba.last)
  end

  test "should show nba" do
    get nba_url(@nba)
    assert_response :success
  end

  test "should get edit" do
    get edit_nba_url(@nba)
    assert_response :success
  end

  test "should update nba" do
    patch nba_url(@nba), params: { nba: { abs_at: @nba.abs_at, compiled_at: @nba.compiled_at, customer_id: @nba.customer_id, deadline: @nba.deadline, deadline_option: @nba.deadline_option, filed_at: @nba.filed_at, indian_application_number: @nba.indian_application_number, nba_number: @nba.nba_number, title: @nba.title } }
    assert_redirected_to nba_url(@nba)
  end

  test "should destroy nba" do
    assert_difference("Nba.count", -1) do
      delete nba_url(@nba)
    end

    assert_redirected_to nbas_url
  end
end
