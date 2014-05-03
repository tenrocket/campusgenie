class StudentsController < studentController

	def index
		@students = Student.all
	end

	def new
		@new_student = Student.new
	end

	def create
		@new_student = Student.new(student_params)
		if @new_student.save
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
