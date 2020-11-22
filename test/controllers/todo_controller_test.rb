require 'test_helper'

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todo_index_url
    assert_response :success
  end

  test "should get show" do
    get todo_show_url
    assert_response :success
  end

end
