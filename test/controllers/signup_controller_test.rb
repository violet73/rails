require 'test_helper'

class SignupControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
	post signup_url, params:{user:{name:"lkl", sex:"男", department_id:6, school_id:"18373293", email:"lkl@buaa.edu.cn", password:"lkl123", password_confirmation:"lkl123"}}
    	assert_response :success
  end

end
