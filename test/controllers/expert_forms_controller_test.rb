require 'test_helper'

class ExpertFormsControllerTest < ActionController::TestCase
  setup do
    @expert_form = expert_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expert_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expert_form" do
    assert_difference('ExpertForm.count') do
      post :create, expert_form: { expertName: @expert_form.expertName, round_id: @expert_form.round_id }
    end

    assert_redirected_to expert_form_path(assigns(:expert_form))
  end

  test "should show expert_form" do
    get :show, id: @expert_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expert_form
    assert_response :success
  end

  test "should update expert_form" do
    patch :update, id: @expert_form, expert_form: { expertName: @expert_form.expertName, round_id: @expert_form.round_id }
    assert_redirected_to expert_form_path(assigns(:expert_form))
  end

  test "should destroy expert_form" do
    assert_difference('ExpertForm.count', -1) do
      delete :destroy, id: @expert_form
    end

    assert_redirected_to expert_forms_path
  end
end
