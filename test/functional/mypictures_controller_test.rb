require 'test_helper'

class MypicturesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mypictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mypicture" do
    assert_difference('Mypicture.count') do
      post :create, :mypicture => { }
    end

    assert_redirected_to mypicture_path(assigns(:mypicture))
  end

  test "should show mypicture" do
    get :show, :id => mypictures(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mypictures(:one).to_param
    assert_response :success
  end

  test "should update mypicture" do
    put :update, :id => mypictures(:one).to_param, :mypicture => { }
    assert_redirected_to mypicture_path(assigns(:mypicture))
  end

  test "should destroy mypicture" do
    assert_difference('Mypicture.count', -1) do
      delete :destroy, :id => mypictures(:one).to_param
    end

    assert_redirected_to mypictures_path
  end
end
