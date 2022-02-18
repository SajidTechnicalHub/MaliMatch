require 'test_helper'

class AddonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get addons_index_url
    assert_response :success
  end

end
