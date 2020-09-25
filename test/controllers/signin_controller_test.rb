require 'test_helper'

class SigninControllerTest < ActionDispatch::IntegrationTest
	def setup
		@user = users(:michael)
	end

  test "should get login" do
	#post signin_url, params:{user:{email:"18373293@buaa.edu.cn", password:"lkllkl", password_confirmation:"lkllkl"}}
	post signin_url, params: { user:{email: @user.email,
				       password: 'password'}}
    	assert_response :success
  end

end
