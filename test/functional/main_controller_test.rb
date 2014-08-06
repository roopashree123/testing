require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get coupon" do
    get :coupon
    assert_response :success
  end

end
