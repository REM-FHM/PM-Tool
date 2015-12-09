require 'test_helper'

class WorkBreakdownStructuresControllerTest < ActionController::TestCase
  setup do
    @work_breakdown_structure = work_breakdown_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_breakdown_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_breakdown_structure" do
    assert_difference('WorkBreakdownStructure.count') do
      post :create, work_breakdown_structure: { p_id: @work_breakdown_structure.p_id }
    end

    assert_redirected_to work_breakdown_structure_path(assigns(:work_breakdown_structure))
  end

  test "should show work_breakdown_structure" do
    get :show, id: @work_breakdown_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_breakdown_structure
    assert_response :success
  end

  test "should update work_breakdown_structure" do
    patch :update, id: @work_breakdown_structure, work_breakdown_structure: { p_id: @work_breakdown_structure.p_id }
    assert_redirected_to work_breakdown_structure_path(assigns(:work_breakdown_structure))
  end

  test "should destroy work_breakdown_structure" do
    assert_difference('WorkBreakdownStructure.count', -1) do
      delete :destroy, id: @work_breakdown_structure
    end

    assert_redirected_to work_breakdown_structures_path
  end
end
