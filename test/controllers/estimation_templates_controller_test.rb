require 'test_helper'

class EstimationTemplatesControllerTest < ActionController::TestCase
  setup do
    @estimation_template = estimation_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estimation_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estimation_template" do
    assert_difference('EstimationTemplate.count') do
      post :create, estimation_template: { comment: @estimation_template.comment, form_template_id: @estimation_template.form_template_id, workpackage_id: @estimation_template.workpackage_id }
    end

    assert_redirected_to estimation_template_path(assigns(:estimation_template))
  end

  test "should show estimation_template" do
    get :show, id: @estimation_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estimation_template
    assert_response :success
  end

  test "should update estimation_template" do
    patch :update, id: @estimation_template, estimation_template: { comment: @estimation_template.comment, form_template_id: @estimation_template.form_template_id, workpackage_id: @estimation_template.workpackage_id }
    assert_redirected_to estimation_template_path(assigns(:estimation_template))
  end

  test "should destroy estimation_template" do
    assert_difference('EstimationTemplate.count', -1) do
      delete :destroy, id: @estimation_template
    end

    assert_redirected_to estimation_templates_path
  end
end
