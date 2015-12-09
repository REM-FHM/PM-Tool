require 'test_helper'

class SubtasksControllerTest < ActionController::TestCase
  setup do
    @subtask = subtasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subtasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subtask" do
    assert_difference('Subtask.count') do
      post :create, subtask: { stName: @subtask.stName, stNumber: @subtask.stNumber, t_id: @subtask.t_id }
    end

    assert_redirected_to subtask_path(assigns(:subtask))
  end

  test "should show subtask" do
    get :show, id: @subtask
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subtask
    assert_response :success
  end

  test "should update subtask" do
    patch :update, id: @subtask, subtask: { stName: @subtask.stName, stNumber: @subtask.stNumber, t_id: @subtask.t_id }
    assert_redirected_to subtask_path(assigns(:subtask))
  end

  test "should destroy subtask" do
    assert_difference('Subtask.count', -1) do
      delete :destroy, id: @subtask
    end

    assert_redirected_to subtasks_path
  end
end
