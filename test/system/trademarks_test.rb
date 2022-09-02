require "application_system_test_case"

class TrademarksTest < ApplicationSystemTestCase
  setup do
    @trademark = trademarks(:one)
  end

  test "visiting the index" do
    visit trademarks_url
    assert_selector "h1", text: "Trademarks"
  end

  test "should create trademark" do
    visit trademarks_url
    click_on "New trademark"

    fill_in "Compiled at", with: @trademark.compiled_at
    fill_in "Customer", with: @trademark.customer_id
    fill_in "Deadline", with: @trademark.deadline
    fill_in "Deadline option", with: @trademark.deadline_option
    fill_in "Filed at", with: @trademark.filed_at
    fill_in "Indian application number", with: @trademark.indian_application_number
    fill_in "Priority at", with: @trademark.priority_at
    fill_in "Priority number", with: @trademark.priority_number
    fill_in "Title", with: @trademark.title
    click_on "Create Trademark"

    assert_text "Trademark was successfully created"
    click_on "Back"
  end

  test "should update Trademark" do
    visit trademark_url(@trademark)
    click_on "Edit this trademark", match: :first

    fill_in "Compiled at", with: @trademark.compiled_at
    fill_in "Customer", with: @trademark.customer_id
    fill_in "Deadline", with: @trademark.deadline
    fill_in "Deadline option", with: @trademark.deadline_option
    fill_in "Filed at", with: @trademark.filed_at
    fill_in "Indian application number", with: @trademark.indian_application_number
    fill_in "Priority at", with: @trademark.priority_at
    fill_in "Priority number", with: @trademark.priority_number
    fill_in "Title", with: @trademark.title
    click_on "Update Trademark"

    assert_text "Trademark was successfully updated"
    click_on "Back"
  end

  test "should destroy Trademark" do
    visit trademark_url(@trademark)
    click_on "Destroy this trademark", match: :first

    assert_text "Trademark was successfully destroyed"
  end
end
