class HomeController < ApplicationController

	before_action :authenticate_user!

	def index
		@questions = Question.includes(:answers).all
	end

	def ques 
		content = params[:content]
		current_user.questions.create(:content => content)
		redirect_to '/'
	end

	def ans
		answer = params[:answer]
		ques = current_user.questions.find(params[:ques])
		ques.answers.create(:answer => answer)
		redirect_to '/'
	end

	def upvote
		up= params[:upvote]
		upvote = QuestionUpvote.find(up)
		if upvote.nil?
			QuestionUpvote.create(:question_id =>question_id)
			@count = QuestionUpvote.all.count
		else
			upvote.destroy
		end

		redirect_to '/'
	end

end
