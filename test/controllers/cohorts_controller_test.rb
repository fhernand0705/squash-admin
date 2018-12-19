require 'test_helper'

class CohortControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cohort_new_url
    assert_response :success
  end

  test "should get edit" do
    get cohort_edit_url
    assert_response :success
  end

  test "should get index" do
    get cohort_index_url
    assert_response :success
  end

  test "should get delete" do
    get cohort_delete_url
    assert_response :success
  end

end
