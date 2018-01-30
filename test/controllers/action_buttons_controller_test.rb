require 'test_helper'

class ActionButtonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get action_buttons_index_url
    assert_response :success
  end

end
