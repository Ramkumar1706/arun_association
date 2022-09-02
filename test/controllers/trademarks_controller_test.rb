require "test_helper"

class TrademarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trademark = trademarks(:one)
  end

  test "should get index" do
    get trademarks_url
    assert_response :success
  end

  test "should get new" do
    get new_trademark_url
    assert_response :success
  end

  test "should create trademark" do
    assert_difference("Trademark.count") do
      post trademarks_url, params: { trademark: { compiled_at: @trademark.compiled_at, customer_id: @trademark.customer_id, deadline: @trademark.deadline, deadline_option: @trademark.deadline_option, filed_at: @trademark.filed_at, indian_application_number: @trademark.indian_application_number, priority_at: @trademark.priority_at, priority_number: @trademark.priority_number, title: @trademark.title } }
    end

    assert_redirected_to trademark_url(Trademark.last)
  end

  test "should show trademark" do
    get trademark_url(@trademark)
    assert_response :success
  end

  test "should get edit" do
    get edit_trademark_url(@trademark)
    assert_response :success
  end

  test "should update trademark" do
    patch trademark_url(@trademark), params: { trademark: { compiled_at: @trademark.compiled_at, customer_id: @trademark.customer_id, deadline: @trademark.deadline, deadline_option: @trademark.deadline_option, filed_at: @trademark.filed_at, indian_application_number: @trademark.indian_application_number, priority_at: @trademark.priority_at, priority_number: @trademark.priority_number, title: @trademark.title } }
    assert_redirected_to trademark_url(@trademark)
  end

  test "should destroy trademark" do
    assert_difference("Trademark.count", -1) do
      delete trademark_url(@trademark)
    end

    assert_redirected_to trademarks_url
  end
end
