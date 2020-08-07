require 'test_helper'

class Form1sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get form1s_new_url
    assert_response :success
  end

end
