require "test_helper"

class CrgEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crg_events_index_url
    assert_response :success
  end

  test "should get show" do
    get crg_events_show_url
    assert_response :success
  end

  test "should get join" do
    get crg_events_join_url
    assert_response :success
  end
end
