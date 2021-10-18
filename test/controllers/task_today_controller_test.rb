require "test_helper"

class TaskTodayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_today_index_url
    assert_response :success
  end
end
