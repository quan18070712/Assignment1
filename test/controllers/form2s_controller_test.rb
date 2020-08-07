require 'test_helper'

class Form2sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get form2s_new_url
    assert_response :success
  end

end
