require 'test_helper'

class UserPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_places_create_url
    assert_response :success
  end

end
