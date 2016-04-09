require 'test_helper'

class LedControllerTest < ActionController::TestCase

  test "LED should been on" do
    get :on
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['led'], 'on')
  end

  test "LED should been off" do
    get :off
    assert_response(:success)
    assert_equal(JSON.parse(response.body)['led'], 'off')
  end

end
