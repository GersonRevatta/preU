require 'test_helper'

class LevelControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get level_new_url
    assert_response :success
  end

  test "should get show" do
    get level_show_url
    assert_response :success
  end

  test "should get edit" do
    get level_edit_url
    assert_response :success
  end

end
