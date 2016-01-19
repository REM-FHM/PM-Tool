require 'test_helper'

class FormTemplatesControllerTest < ActionController::TestCase
  setup do
    @form_template = form_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_template" do
    assert_difference('FormTemplate.count') do
      post :create, form_template: { round_id: @form_template.round_id }
    end

    assert_redirected_to form_template_path(assigns(:form_template))
  end

  test "should show form_template" do
    get :show, id: @form_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_template
    assert_response :success
  end

  test "should update form_template" do
    patch :update, id: @form_template, form_template: { round_id: @form_template.round_id }
    assert_redirected_to form_template_path(assigns(:form_template))
  end

  test "should destroy form_template" do
    assert_difference('FormTemplate.count', -1) do
      delete :destroy, id: @form_template
    end

    assert_redirected_to form_templates_path
  end
end
