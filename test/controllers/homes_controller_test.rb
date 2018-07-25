require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get homes_result_url
    assert_response :success
  end

end
