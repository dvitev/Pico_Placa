require 'test_helper'

class PplacasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pplacas_new_url
    assert_response :success
  end

end
