require 'test_helper'

class BootcampsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bootcamps_show_url
    assert_response :success
  end

end
