require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get demo" do
    get :demo
    assert_response :success
  end

end
