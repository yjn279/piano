require 'test_helper'

class KirokuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kiroku_index_url
    assert_response :success
  end

end
