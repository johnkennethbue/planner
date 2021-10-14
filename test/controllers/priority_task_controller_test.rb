require "test_helper"

class PriorityTaskControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get priority_task_index_url
    assert_response :success
  end
end
