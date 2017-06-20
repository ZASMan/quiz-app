class CorrectAnswersController < ApplicationController
  before_action :set_correct_answer, only: [:show, :edit, :update, :destroy]

  # GET /correct_answers
  def index
    @correct_answers = CorrectAnswer.all
  end

  # GET /correct_answers/1
  def show
  end

  # GET /correct_answers/new
  def new
    @correct_answer = CorrectAnswer.new
  end

  # GET /correct_answers/1/edit
  def edit
  end

  # POST /correct_answers
  def create
    @correct_answer = CorrectAnswer.new(correct_answer_params)

    if @correct_answer.save
      redirect_to @correct_answer, notice: 'Correct answer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /correct_answers/1
  def update
    if @correct_answer.update(correct_answer_params)
      redirect_to @correct_answer, notice: 'Correct answer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /correct_answers/1
  def destroy
    @correct_answer.destroy
    redirect_to correct_answers_url, notice: 'Correct answer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correct_answer
      @correct_answer = CorrectAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def correct_answer_params
      params.require(:correct_answer).permit(:correct_answer_text, :question_id)
    end
end
