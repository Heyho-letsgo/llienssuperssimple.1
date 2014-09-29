require 'test_helper'

class SousgroupesControllerTest < ActionController::TestCase
  setup do
    @sousgroupe = sousgroupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sousgroupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sousgroupe" do
    assert_difference('Sousgroupe.count') do
      post :create, sousgroupe: { name: @sousgroupe.name, principalgroupe_id: @sousgroupe.principalgroupe_id }
    end

    assert_redirected_to sousgroupe_path(assigns(:sousgroupe))
  end

  test "should show sousgroupe" do
    get :show, id: @sousgroupe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sousgroupe
    assert_response :success
  end

  test "should update sousgroupe" do
    patch :update, id: @sousgroupe, sousgroupe: { name: @sousgroupe.name, principalgroupe_id: @sousgroupe.principalgroupe_id }
    assert_redirected_to sousgroupe_path(assigns(:sousgroupe))
  end

  test "should destroy sousgroupe" do
    assert_difference('Sousgroupe.count', -1) do
      delete :destroy, id: @sousgroupe
    end

    assert_redirected_to sousgroupes_path
  end
end
