require 'test_helper'

class UserPhrasesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_phrases_create_url
    assert_response :success
  end

end
