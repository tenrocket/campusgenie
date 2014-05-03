class ScholarshipsController < ApplicationController

	def index
		@scholarships = Scholarship.all
	end

	def new
		@new_scholarship = Scholarship.new
	end

	def create
		@new_scholarship = Scholarship.new(scholarship_params)
		if @new_scholarship.save
			redirect_to scholarships_path
		else
			redirect_to new_scholarship_path
		end
	end

	def edit
		@scholarship = Scholarship.find(params[:id])
	end

	def update
		@scholarship = Scholarship.find(params[:id])
		if @scholarship.update_attributes(scholarship_params)
			redirect_to scholarships_params
		else
			redirect_to edit_scholarship_path
		end
	end

	def destroy
		
	end

	private

	def scholarship_params
		params.require(:scholarship).permit!
	end

end
