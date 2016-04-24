require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get our_pastor" do
    get :our_pastor
    assert_response :success
  end

  test "should get our_church" do
    get :our_church
    assert_response :success
  end

end
