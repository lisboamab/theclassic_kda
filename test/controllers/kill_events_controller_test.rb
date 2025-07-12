require "test_helper"

class KillEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kill_event = kill_events(:one)
  end

  test "should get index" do
    get kill_events_url
    assert_response :success
  end

  test "should get new" do
    get new_kill_event_url
    assert_response :success
  end

  test "should create kill_event" do
    assert_difference("KillEvent.count") do
      post kill_events_url, params: { kill_event: { combat_session_id: @kill_event.combat_session_id, killer_id: @kill_event.killer_id, victim_id: @kill_event.victim_id } }
    end

    assert_redirected_to kill_event_url(KillEvent.last)
  end

  test "should show kill_event" do
    get kill_event_url(@kill_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_kill_event_url(@kill_event)
    assert_response :success
  end

  test "should update kill_event" do
    patch kill_event_url(@kill_event), params: { kill_event: { combat_session_id: @kill_event.combat_session_id, killer_id: @kill_event.killer_id, victim_id: @kill_event.victim_id } }
    assert_redirected_to kill_event_url(@kill_event)
  end

  test "should destroy kill_event" do
    assert_difference("KillEvent.count", -1) do
      delete kill_event_url(@kill_event)
    end

    assert_redirected_to kill_events_url
  end
end
