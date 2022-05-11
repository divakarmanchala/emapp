require "test_helper"

class DesignationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get designations_index_url
    assert_response :success
  end
end
