require 'test_helper'

class InstructorsControllerTest < ActionDispatch::IntegrationTest
  test "should get instructors" do
    get instructors_instructors_url
    assert_response :success
  end

end
