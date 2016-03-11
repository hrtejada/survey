require 'test_helper'

class SingleSurveysControllerTest < ActionController::TestCase
  setup do
    @single_survey = single_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:single_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create single_survey" do
    assert_difference('SingleSurvey.count') do
      post :create, single_survey: { name: @single_survey.name }
    end

    assert_redirected_to single_survey_path(assigns(:single_survey))
  end

  test "should show single_survey" do
    get :show, id: @single_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @single_survey
    assert_response :success
  end

  test "should update single_survey" do
    patch :update, id: @single_survey, single_survey: { name: @single_survey.name }
    assert_redirected_to single_survey_path(assigns(:single_survey))
  end

  test "should destroy single_survey" do
    assert_difference('SingleSurvey.count', -1) do
      delete :destroy, id: @single_survey
    end

    assert_redirected_to single_surveys_path
  end
end
