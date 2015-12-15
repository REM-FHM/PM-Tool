require 'test_helper'

class ProductBreakdownStructuresControllerTest < ActionController::TestCase
  setup do
    @product_breakdown_structure = product_breakdown_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_breakdown_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_breakdown_structure" do
    assert_difference('ProductBreakdownStructure.count') do
      post :create, product_breakdown_structure: { p_id: @product_breakdown_structure.p_id }
    end

    assert_redirected_to product_breakdown_structure_path(assigns(:product_breakdown_structure))
  end

  test "should show product_breakdown_structure" do
    get :show, id: @product_breakdown_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_breakdown_structure
    assert_response :success
  end

  test "should update product_breakdown_structure" do
    patch :update, id: @product_breakdown_structure, product_breakdown_structure: { p_id: @product_breakdown_structure.p_id }
    assert_redirected_to product_breakdown_structure_path(assigns(:product_breakdown_structure))
  end

  test "should destroy product_breakdown_structure" do
    assert_difference('ProductBreakdownStructure.count', -1) do
      delete :destroy, id: @product_breakdown_structure
    end

    assert_redirected_to product_breakdown_structures_path
  end
end
