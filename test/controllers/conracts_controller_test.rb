require 'test_helper'

class ConractsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conracts_index_url
    assert_response :success
  end

  test "should get show" do
    get conracts_show_url
    assert_response :success
  end

  test "should get new" do
    get conracts_new_url
    assert_response :success
  end

  test "should get edit" do
    get conracts_edit_url
    assert_response :success
  end

  test "should get create" do
    get conracts_create_url
    assert_response :success
  end

  test "should get update" do
    get conracts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get conracts_destroy_url
    assert_response :success
  end

end
