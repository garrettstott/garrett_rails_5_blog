require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get blogger_show_url
    assert_response :success
  end

end
