class SingleSurveysController < ApplicationController
  before_action :set_single_survey, only: [:show, :edit, :update, :destroy]

  # GET /single_surveys
  # GET /single_surveys.json
  def index
    @single_surveys = SingleSurvey.all
  end

  # GET /single_surveys/1
  # GET /single_surveys/1.json
  def show
  end

  # GET /single_surveys/new
  def new
    @single_survey = SingleSurvey.new
    3.times do
      question = @single_survey.questions.build
      4.times { question.answers.build }
    end
  end

  # GET /single_surveys/1/edit
  def edit
  end

  # POST /single_surveys
  # POST /single_surveys.json
  def create
    @single_survey = SingleSurvey.new(single_survey_params)

    respond_to do |format|
      if @single_survey.save
        format.html { redirect_to @single_survey, notice: 'Single survey was successfully created.' }
        format.json { render :show, status: :created, location: @single_survey }
      else
        format.html { render :new }
        format.json { render json: @single_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_surveys/1
  # PATCH/PUT /single_surveys/1.json
  def update
    respond_to do |format|
      if @single_survey.update(single_survey_params)
        format.html { redirect_to @single_survey, notice: 'Single survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @single_survey }
      else
        format.html { render :edit }
        format.json { render json: @single_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_surveys/1
  # DELETE /single_surveys/1.json
  def destroy
    @single_survey.destroy
    respond_to do |format|
      format.html { redirect_to single_surveys_url, notice: 'Single survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_survey
      @single_survey = SingleSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def single_survey_params
      params.require(:single_survey).permit(:name, questions_attributes: [:id, :content, :_destroy, answers_attributes: [:id, :content, :_destroy]])
    end
end
