require "application_system_test_case"

class KillEventsTest < ApplicationSystemTestCase
  setup do
    @kill_event = kill_events(:one)
  end

  test "visiting the index" do
    visit kill_events_url
    assert_selector "h1", text: "Kill events"
  end

  test "should create kill event" do
    visit kill_events_url
    click_on "New kill event"

    fill_in "Combat session", with: @kill_event.combat_session_id
    fill_in "Killer", with: @kill_event.killer_id
    fill_in "Victim", with: @kill_event.victim_id
    click_on "Create Kill event"

    assert_text "Kill event was successfully created"
    click_on "Back"
  end

  test "should update Kill event" do
    visit kill_event_url(@kill_event)
    click_on "Edit this kill event", match: :first

    fill_in "Combat session", with: @kill_event.combat_session_id
    fill_in "Killer", with: @kill_event.killer_id
    fill_in "Victim", with: @kill_event.victim_id
    click_on "Update Kill event"

    assert_text "Kill event was successfully updated"
    click_on "Back"
  end

  test "should destroy Kill event" do
    visit kill_event_url(@kill_event)
    click_on "Destroy this kill event", match: :first

    assert_text "Kill event was successfully destroyed"
  end
end
