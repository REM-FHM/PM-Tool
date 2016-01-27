require 'test_helper'

class RamEntriesControllerTest < ActionController::TestCase
  setup do
    @ram_entry = ram_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ram_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ram_entry" do
    assert_difference('RamEntry.count') do
      post :create, ram_entry: { component_id: @ram_entry.component_id, ram_id: @ram_entry.ram_id, resource_id: @ram_entry.resource_id, workpackage_id: @ram_entry.workpackage_id }
    end

    assert_redirected_to ram_entry_path(assigns(:ram_entry))
  end

  test "should show ram_entry" do
    get :show, id: @ram_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ram_entry
    assert_response :success
  end

  test "should update ram_entry" do
    patch :update, id: @ram_entry, ram_entry: { component_id: @ram_entry.component_id, ram_id: @ram_entry.ram_id, resource_id: @ram_entry.resource_id, workpackage_id: @ram_entry.workpackage_id }
    assert_redirected_to ram_entry_path(assigns(:ram_entry))
  end

  test "should destroy ram_entry" do
    assert_difference('RamEntry.count', -1) do
      delete :destroy, id: @ram_entry
    end

    assert_redirected_to ram_entries_path
  end
end
