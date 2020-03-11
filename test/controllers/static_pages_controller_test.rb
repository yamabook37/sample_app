require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  # めんどいこと何回も書いてるのを最適化しようというあれ
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  #演習3.42
  test "should get root" do
    get root_path #5章
    #get static_pages_home_url #ここ怪しい？
    assert_response :success
  end
  
  test "should get home" do
    get home_path #5章
    #get static_pages_home_url
    assert_response :success
    #assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    #あらなんと簡単に！
    #assert_select "title", "Ruby on Rails Tutorial Sample App"
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get help_path #5章
    #get static_pages_help_url
    assert_response :success
    #assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get about_path #5章
    #get static_pages_about_url
    assert_response :success
    #assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path #5章
    #get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
