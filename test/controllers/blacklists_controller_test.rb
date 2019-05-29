require 'test_helper'

class BlacklistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blacklists_index_url
    assert_response :success
  end

  test "should get show" do
    get blacklists_show_url
    assert_response :success
  end

  test "should get new" do
    get blacklists_new_url
    assert_response :success
  end

  test "should get create" do
    get blacklists_create_url
    assert_response :success
  end

  test "should get update" do
    get blacklists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get blacklists_destroy_url
    assert_response :success
  end

end
