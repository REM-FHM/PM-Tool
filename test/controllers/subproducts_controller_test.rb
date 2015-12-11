require 'test_helper'

class SubproductsControllerTest < ActionController::TestCase
  setup do
    @subproduct = subproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subproduct" do
    assert_difference('Subproduct.count') do
      post :create, subproduct: { name: @subproduct.name, pbs_id: @subproduct.pbs_id }
    end

    assert_redirected_to subproduct_path(assigns(:subproduct))
  end

  test "should show subproduct" do
    get :show, id: @subproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subproduct
    assert_response :success
  end

  test "should update subproduct" do
    patch :update, id: @subproduct, subproduct: { name: @subproduct.name, pbs_id: @subproduct.pbs_id }
    assert_redirected_to subproduct_path(assigns(:subproduct))
  end

  test "should destroy subproduct" do
    assert_difference('Subproduct.count', -1) do
      delete :destroy, id: @subproduct
    end

    assert_redirected_to subproducts_path
  end
end
