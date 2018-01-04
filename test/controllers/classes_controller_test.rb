require 'test_helper'

class ClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get classes" do
    get classes_classes_url
    assert_response :success
  end

end
