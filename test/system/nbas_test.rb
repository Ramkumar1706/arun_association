require "application_system_test_case"

class NbasTest < ApplicationSystemTestCase
  setup do
    @nba = nbas(:one)
  end

  test "visiting the index" do
    visit nbas_url
    assert_selector "h1", text: "Nbas"
  end

  test "should create nba" do
    visit nbas_url
    click_on "New nba"

    fill_in "Abs at", with: @nba.abs_at
    fill_in "Compiled at", with: @nba.compiled_at
    fill_in "Customer", with: @nba.customer_id
    fill_in "Deadline", with: @nba.deadline
    fill_in "Deadline option", with: @nba.deadline_option
    fill_in "Filed at", with: @nba.filed_at
    fill_in "Indian application number", with: @nba.indian_application_number
    fill_in "Nba number", with: @nba.nba_number
    fill_in "Title", with: @nba.title
    click_on "Create Nba"

    assert_text "Nba was successfully created"
    click_on "Back"
  end

  test "should update Nba" do
    visit nba_url(@nba)
    click_on "Edit this nba", match: :first

    fill_in "Abs at", with: @nba.abs_at
    fill_in "Compiled at", with: @nba.compiled_at
    fill_in "Customer", with: @nba.customer_id
    fill_in "Deadline", with: @nba.deadline
    fill_in "Deadline option", with: @nba.deadline_option
    fill_in "Filed at", with: @nba.filed_at
    fill_in "Indian application number", with: @nba.indian_application_number
    fill_in "Nba number", with: @nba.nba_number
    fill_in "Title", with: @nba.title
    click_on "Update Nba"

    assert_text "Nba was successfully updated"
    click_on "Back"
  end

  test "should destroy Nba" do
    visit nba_url(@nba)
    click_on "Destroy this nba", match: :first

    assert_text "Nba was successfully destroyed"
  end
end
