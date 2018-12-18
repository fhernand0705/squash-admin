require 'test_helper'

class ClinicsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clinics_new_url
    assert_response :success
  end

  test "should get edit" do
    get clinics_edit_url
    assert_response :success
  end

  test "should get index" do
    get clinics_index_url
    assert_response :success
  end

  test "should get delete" do
    get clinics_delete_url
    assert_response :success
  end

end
