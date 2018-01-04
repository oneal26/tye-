require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get event_1" do
    get events_event_1_url
    assert_response :success
  end

  test "should get event_2" do
    get events_event_2_url
    assert_response :success
  end

  test "should get event_3" do
    get events_event_3_url
    assert_response :success
  end

  test "should get event_4" do
    get events_event_4_url
    assert_response :success
  end

  test "should get event_5" do
    get events_event_5_url
    assert_response :success
  end

end
