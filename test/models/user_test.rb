class CommunityTest < ActiveSupport::TestCase
    test "should create a new user" do
        user = User.new
        user.username= "John Doe"
        user.password = "Password1!"
        user user.save, "Account successfully created. " 

end
