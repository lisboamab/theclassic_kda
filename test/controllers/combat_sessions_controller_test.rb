require "test_helper"

class CombatSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combat_session = combat_sessions(:one)
  end

  test "should get index" do
    get combat_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_combat_session_url
    assert_response :success
  end

  test "should create combat_session" do
    assert_difference("CombatSession.count") do
      post combat_sessions_url, params: { combat_session: { ended_at: @combat_session.ended_at, executed_on: @combat_session.executed_on, started_at: @combat_session.started_at } }
    end

    assert_redirected_to combat_session_url(CombatSession.last)
  end

  test "should show combat_session" do
    get combat_session_url(@combat_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_combat_session_url(@combat_session)
    assert_response :success
  end

  test "should update combat_session" do
    patch combat_session_url(@combat_session), params: { combat_session: { ended_at: @combat_session.ended_at, executed_on: @combat_session.executed_on, started_at: @combat_session.started_at } }
    assert_redirected_to combat_session_url(@combat_session)
  end

  test "should destroy combat_session" do
    assert_difference("CombatSession.count", -1) do
      delete combat_session_url(@combat_session)
    end

    assert_redirected_to combat_sessions_url
  end
end
