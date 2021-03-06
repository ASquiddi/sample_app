require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get '/'
    assert_response :success
    assert_select 'title', text: 'Ruby on Rails Tutorial Sample App'
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', text: 'Help | Ruby on Rails Tutorial Sample App'
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', text: 'About | Ruby on Rails Tutorial Sample App'
  end

end
