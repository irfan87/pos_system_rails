require 'test_helper'

class WelcomePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_pages_index_url
    assert_response :success
  end

  test "should get contact_us" do
    get welcome_pages_contact_us_url
    assert_response :success
  end

end
