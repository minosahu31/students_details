class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
		#raise @student.inspect 
	end

	def new
		@student = Student.new
	end

	def create
		#raise student_params.inspect
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path
		else
			render "new"
		end
	end

	def edit
		@student = Student.find(params[:id])
	end
	
	def update
		#render plain: params[:student].inspect
		@student = Student.find(params[:id])
		#raise @student.inspect
		if @student.update(student_params)
			redirect_to student_path(@student)
		else
			render "edit"
		end
	end

	def destroy
		@student = Student.find(params[:id])
		if @student.destroy
			redirect_to students_path
		else
			redirect_to student_path(@student)
		end
	end

	private

	def student_params
		params.require(:student).permit(:name, :roll_no, :student_class, :description)
	end

end
