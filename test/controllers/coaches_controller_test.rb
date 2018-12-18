require 'test_helper'

class CoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get coaches_new_url
    assert_response :success
  end

  test "should get edit" do
    get coaches_edit_url
    assert_response :success
  end

  test "should get index" do
    get coaches_index_url
    assert_response :success
  end

  test "should get delete" do
    get coaches_delete_url
    assert_response :success
  end

end
