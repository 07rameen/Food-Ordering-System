require "test_helper"

class ManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get managerdashboard" do
    get management_managerdashboard_url
    assert_response :success
  end
end
