require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get employers_show_url
    assert_response :success
  end

end
