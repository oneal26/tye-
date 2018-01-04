require 'test_helper'

class ClassCalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_cal = class_cals(:one)
  end

  test "should get index" do
    get class_cals_url
    assert_response :success
  end

  test "should get new" do
    get new_class_cal_url
    assert_response :success
  end

  test "should create class_cal" do
    assert_difference('ClassCal.count') do
      post class_cals_url, params: { class_cal: { end_time: @class_cal.end_time, name: @class_cal.name, start_time: @class_cal.start_time } }
    end

    assert_redirected_to class_cal_url(ClassCal.last)
  end

  test "should show class_cal" do
    get class_cal_url(@class_cal)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_cal_url(@class_cal)
    assert_response :success
  end

  test "should update class_cal" do
    patch class_cal_url(@class_cal), params: { class_cal: { end_time: @class_cal.end_time, name: @class_cal.name, start_time: @class_cal.start_time } }
    assert_redirected_to class_cal_url(@class_cal)
  end

  test "should destroy class_cal" do
    assert_difference('ClassCal.count', -1) do
      delete class_cal_url(@class_cal)
    end

    assert_redirected_to class_cals_url
  end
end
