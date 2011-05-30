require 'test_helper'

class ItemPhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_photos" do
    assert_difference('ItemPhotos.count') do
      post :create, :item_photos => { }
    end

    assert_redirected_to item_photos_path(assigns(:item_photos))
  end

  test "should show item_photos" do
    get :show, :id => item_photos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => item_photos(:one).to_param
    assert_response :success
  end

  test "should update item_photos" do
    put :update, :id => item_photos(:one).to_param, :item_photos => { }
    assert_redirected_to item_photos_path(assigns(:item_photos))
  end

  test "should destroy item_photos" do
    assert_difference('ItemPhotos.count', -1) do
      delete :destroy, :id => item_photos(:one).to_param
    end

    assert_redirected_to item_photos_path
  end
end
