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

     test "should update a task to update task details" do
        task = Task.edit
        task.category= "Update First task"
        task.body = "Updating the body"
        task.deadline= Date.today
        assert task.save, "Task has been updated. " 
        assert_not task.save, "Cannot save the task. Complete all fields. "
    end

    test "should delete task details" do
        task = Task.delete
       
    end

    test "should view task details" do
        task.category= "First task"
        task.body = "Clear all tasks for today"
        task.deadline= Date.today
    end

    test "should view task list" do
        task.category= "First task"
    end

  
end