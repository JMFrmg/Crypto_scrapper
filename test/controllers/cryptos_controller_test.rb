require 'test_helper'

class CryptosControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get cryptos_home_url
    assert_response :success
  end

  test "should get search" do
    get cryptos_search_url
    assert_response :success
  end

end
