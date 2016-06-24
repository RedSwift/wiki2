require 'test_helper'

class CartoonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cartoons_index_url
    assert_response :success
  end

  test "should get show" do
    get cartoons_show_url
    assert_response :success
  end

  test "should get new" do
    get cartoons_new_url
    assert_response :success
  end

  test "should get edit" do
    get cartoons_edit_url
    assert_response :success
  end

end
