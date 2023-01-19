require "test_helper"

class TempleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get temple_index_url
    assert_response :success
  end

  test "should get new" do
    get temple_new_url
    assert_response :success
  end

  test "should get show" do
    get temple_show_url
    assert_response :success
  end

  test "should get create" do
    get temple_create_url
    assert_response :success
  end

  test "should get destroy" do
    get temple_destroy_url
    assert_response :success
  end
end
