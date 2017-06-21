require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get batman" do
    get pages_batman_url
    assert_response :success
  end

  test "should get superman" do
    get pages_superman_url
    assert_response :success
  end

  test "should get batman-vs-superman" do
    get pages_batman-vs-superman_url
    assert_response :success
  end

end
