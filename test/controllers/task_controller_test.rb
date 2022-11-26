require "test_helper"

class TaskControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = task(:one)
  end

  test "should get index" do
    get task_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post task_url, params: { task: { category: @task.category, body: @task.body, deadline: @task.deadline} }
    end

    assert_redirected_to article_url(Task.last)
  end

  test "should show task" do
    get article_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { category: @task.category, body: @task.body, deadline: @task.deadline } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete article_url(@task)
    end

    assert_redirected_to task_url
  end
end
