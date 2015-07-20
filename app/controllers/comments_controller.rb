class CommentsController < ApplicationController
	def create
		@job = Job.find(params[:job_id])
		@comment = @job.comments.create(params[:comment].permit(:comment))
		@comment.user_id = current_user.id if current_user
		@comment.save

		if @comment.save
		
			UserMailer.notificaComentario(@comment,@job).deliver
			  flash[:notice] = 'report sent!'
			  	redirect_to job_path(@job)
		else
			render 'new'
		end
	end


	def edit
		
		@job = Job.find(params[:job_id])
		@comment = @job.comments.find(params[:id])
	end

	def update
		@job = Job.find(params[:job_id])
		@comment = @job.comments.find(params[:id])

		if @comment.update(params[:comment].permit(:comment))
			redirect_to job_path(@job)
		else
			render 'edit'
		end
	end

	

	def destroy
		@job = Job.find(params[:job_id])
		@comment = @job.comments.find(params[:id])
		@comment.destroy
		redirect_to job_path(@job)
	end
end
