class StudentsController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
	skip_filter :ensure_logged_in, only: [:new, :create]

	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			redirect_to new_student_path
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		if @student.update_attributes(student_params)
			redirect_to students_params
		else
			redirect_to edit_student_path
		end
	end

	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			redirect_to students_path
		end
	end

	private

	def student_params
		params.require(:student).permit!
	end

end
