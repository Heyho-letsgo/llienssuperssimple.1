require 'test_helper'

class PrincipalgroupesControllerTest < ActionController::TestCase
  setup do
    @principalgroupe = principalgroupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:principalgroupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create principalgroupe" do
    assert_difference('Principalgroupe.count') do
      post :create, principalgroupe: { nom: @principalgroupe.nom }
    end

    assert_redirected_to principalgroupe_path(assigns(:principalgroupe))
  end

  test "should show principalgroupe" do
    get :show, id: @principalgroupe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @principalgroupe
    assert_response :success
  end

  test "should update principalgroupe" do
    patch :update, id: @principalgroupe, principalgroupe: { nom: @principalgroupe.nom }
    assert_redirected_to principalgroupe_path(assigns(:principalgroupe))
  end

  test "should destroy principalgroupe" do
    assert_difference('Principalgroupe.count', -1) do
      delete :destroy, id: @principalgroupe
    end

    assert_redirected_to principalgroupes_path
  end
end
