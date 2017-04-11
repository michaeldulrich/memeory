require 'test_helper'

class MemesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memes_index_url
    assert_response :success
  end

  test "should get show" do
    get memes_show_url
    assert_response :success
  end

  test "should get new" do
    get memes_new_url
    assert_response :success
  end

  test "should get edit" do
    get memes_edit_url
    assert_response :success
  end

  test "should get delete" do
    get memes_delete_url
    assert_response :success
  end

end
