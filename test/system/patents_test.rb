require "application_system_test_case"

class PatentsTest < ApplicationSystemTestCase
  setup do
    @patent = patents(:one)
  end

  test "visiting the index" do
    visit patents_url
    assert_selector "h1", text: "Patents"
  end

  test "should create patent" do
    visit patents_url
    click_on "New patent"

    fill_in "Compiled at", with: @patent.compiled_at
    fill_in "Customer", with: @patent.customer_id
    fill_in "Deadline", with: @patent.deadline
    fill_in "Deadline option", with: @patent.deadline_option
    fill_in "Filed at", with: @patent.filed_at
    fill_in "Indian application number", with: @patent.indian_application_number
    fill_in "Priority at", with: @patent.priority_at
    fill_in "Priority number", with: @patent.priority_number
    fill_in "Title", with: @patent.title
    click_on "Create Patent"

    assert_text "Patent was successfully created"
    click_on "Back"
  end

  test "should update Patent" do
    visit patent_url(@patent)
    click_on "Edit this patent", match: :first

    fill_in "Compiled at", with: @patent.compiled_at
    fill_in "Customer", with: @patent.customer_id
    fill_in "Deadline", with: @patent.deadline
    fill_in "Deadline option", with: @patent.deadline_option
    fill_in "Filed at", with: @patent.filed_at
    fill_in "Indian application number", with: @patent.indian_application_number
    fill_in "Priority at", with: @patent.priority_at
    fill_in "Priority number", with: @patent.priority_number
    fill_in "Title", with: @patent.title
    click_on "Update Patent"

    assert_text "Patent was successfully updated"
    click_on "Back"
  end

  test "should destroy Patent" do
    visit patent_url(@patent)
    click_on "Destroy this patent", match: :first

    assert_text "Patent was successfully destroyed"
  end
end
