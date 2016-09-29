require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get canciones" do
    get :canciones
    assert_response :success
  end

  test "should get piqueos" do
    get :piqueos
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
