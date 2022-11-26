class CommunityTest < ActiveSupport::TestCase
    test "should create a new task" do
        task = Task.new
        task.category= "First task"
        task.body = "Clear all tasks for today"
        task.deadline= Date.today
        assert task.save, "Task successfully created. " 
    end

    
    test "should not save task without task_name" do
         task = Task.new
         task.category= "First task"
         assert_not task.save, "Cannot save the task. Complete all fields. "
     end
end