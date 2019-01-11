require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

def setup


  test "login with invalid formation" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email: "", password: ""}}
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flashempty?
  end
end
