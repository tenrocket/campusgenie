class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
		@new_question = Question.new
	end

	def create
		@new_question = Question.new(question_params)
		if @new_question.save
			redirect_to questions_path
		else
			redirect_to new_question_path
		end
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
		if @question.update_attributes(question_params)
			redirect_to questions_params
		else
			redirect_to edit_question_path
		end
	end

	def destroy
		@question = Question.find(params[:id])
		if @question.destroy
			redirect_to questions_path
		end
	end

	def show
		@question = Question.find(params[:id])
	end

	private

	def question_params
		params.require(:question).permit!
	end

end
