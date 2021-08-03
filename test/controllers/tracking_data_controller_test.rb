require "test_helper"

class TrackingDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracking_data_index_url
    assert_response :success
  end
end
