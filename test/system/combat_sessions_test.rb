require "application_system_test_case"

class CombatSessionsTest < ApplicationSystemTestCase
  setup do
    @combat_session = combat_sessions(:one)
  end

  test "visiting the index" do
    visit combat_sessions_url
    assert_selector "h1", text: "Combat sessions"
  end

  test "should create combat session" do
    visit combat_sessions_url
    click_on "New combat session"

    fill_in "Ended at", with: @combat_session.ended_at
    fill_in "Executed on", with: @combat_session.executed_on
    fill_in "Started at", with: @combat_session.started_at
    click_on "Create Combat session"

    assert_text "Combat session was successfully created"
    click_on "Back"
  end

  test "should update Combat session" do
    visit combat_session_url(@combat_session)
    click_on "Edit this combat session", match: :first

    fill_in "Ended at", with: @combat_session.ended_at
    fill_in "Executed on", with: @combat_session.executed_on
    fill_in "Started at", with: @combat_session.started_at
    click_on "Update Combat session"

    assert_text "Combat session was successfully updated"
    click_on "Back"
  end

  test "should destroy Combat session" do
    visit combat_session_url(@combat_session)
    click_on "Destroy this combat session", match: :first

    assert_text "Combat session was successfully destroyed"
  end
end
