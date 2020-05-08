require 'test_helper'

class AutomorphControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get automorph_input_url
    assert_response :success
  end

  test "should get output" do
    get automorph_output_url
    assert_response :redirect
  end

  test "should get error" do
    get automorph_error_url
    assert_response :success
  end
test "should get 4 numbers" do
  get automorph_output_url, params:  {n: 70}
  assert_equal assigns[:res], [[1,1],[5,25],[6,36],[25,625]]
end
end
