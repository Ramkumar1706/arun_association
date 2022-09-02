require "application_system_test_case"

class DesignsTest < ApplicationSystemTestCase
  setup do
    @design = designs(:one)
  end

  test "visiting the index" do
    visit designs_url
    assert_selector "h1", text: "Designs"
  end

  test "should create design" do
    visit designs_url
    click_on "New design"

    fill_in "Compiled at", with: @design.compiled_at
    fill_in "Customer", with: @design.customer_id
    fill_in "Deadline", with: @design.deadline
    fill_in "Deadline option", with: @design.deadline_option
    fill_in "Filed at", with: @design.filed_at
    fill_in "Indian application number", with: @design.indian_application_number
    fill_in "Priority at", with: @design.priority_at
    fill_in "Priority number", with: @design.priority_number
    fill_in "Title", with: @design.title
    click_on "Create Design"

    assert_text "Design was successfully created"
    click_on "Back"
  end

  test "should update Design" do
    visit design_url(@design)
    click_on "Edit this design", match: :first

    fill_in "Compiled at", with: @design.compiled_at
    fill_in "Customer", with: @design.customer_id
    fill_in "Deadline", with: @design.deadline
    fill_in "Deadline option", with: @design.deadline_option
    fill_in "Filed at", with: @design.filed_at
    fill_in "Indian application number", with: @design.indian_application_number
    fill_in "Priority at", with: @design.priority_at
    fill_in "Priority number", with: @design.priority_number
    fill_in "Title", with: @design.title
    click_on "Update Design"

    assert_text "Design was successfully updated"
    click_on "Back"
  end

  test "should destroy Design" do
    visit design_url(@design)
    click_on "Destroy this design", match: :first

    assert_text "Design was successfully destroyed"
  end
end
