require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    #get users_new_url
    get signup_path #5章
    assert_response :success
  end

end
