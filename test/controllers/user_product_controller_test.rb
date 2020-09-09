require 'test_helper'

class UserProductControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_product_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_product_destroy_url
    assert_response :success
  end

end
