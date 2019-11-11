require 'test_helper'

class UserPlaceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_place_create_url
    assert_response :success
  end

end
