require 'test_helper'

class ClaassesControllerTest < ActionController::TestCase
  setup do
    @claass = claasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:claasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create claass" do
    assert_difference('Claass.count') do
      post :create, claass: { class_name: @claass.class_name }
    end

    assert_redirected_to claass_path(assigns(:claass))
  end

  test "should show claass" do
    get :show, id: @claass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @claass
    assert_response :success
  end

  test "should update claass" do
    put :update, id: @claass, claass: { class_name: @claass.class_name }
    assert_redirected_to claass_path(assigns(:claass))
  end

  test "should destroy claass" do
    assert_difference('Claass.count', -1) do
      delete :destroy, id: @claass
    end

    assert_redirected_to claasses_path
  end
end
