class CommentsController < ApplicationController
	
	def create
		@student = Student.find(params[:id])
		#raise @student.inpect
		@comment = @student.comments.new(comment_params)
		if @comment.save
			redirect_to student_path(@student)
		end		
	end


	private

	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
