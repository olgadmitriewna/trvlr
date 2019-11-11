require 'test_helper'

class UserVisasControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_visas_create_url
    assert_response :success
  end

end
