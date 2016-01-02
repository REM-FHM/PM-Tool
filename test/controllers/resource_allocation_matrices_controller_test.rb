require 'test_helper'

class ResourceAllocationMatricesControllerTest < ActionController::TestCase
  setup do
    @resource_allocation_matrix = resource_allocation_matrices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_allocation_matrices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_allocation_matrix" do
    assert_difference('ResourceAllocationMatrix.count') do
      post :create, resource_allocation_matrix: { p_id: @resource_allocation_matrix.p_id }
    end

    assert_redirected_to resource_allocation_matrix_path(assigns(:resource_allocation_matrix))
  end

  test "should show resource_allocation_matrix" do
    get :show, id: @resource_allocation_matrix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_allocation_matrix
    assert_response :success
  end

  test "should update resource_allocation_matrix" do
    patch :update, id: @resource_allocation_matrix, resource_allocation_matrix: { p_id: @resource_allocation_matrix.p_id }
    assert_redirected_to resource_allocation_matrix_path(assigns(:resource_allocation_matrix))
  end

  test "should destroy resource_allocation_matrix" do
    assert_difference('ResourceAllocationMatrix.count', -1) do
      delete :destroy, id: @resource_allocation_matrix
    end

    assert_redirected_to resource_allocation_matrices_path
  end
end
