class HomeController < ApplicationController

	before_action :authenticate_user!

	def index
		@questions = Question.includes(:answers,:question_upvotes).all
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
		if up.nil?
			QuestionUpvote.create(:user_id => current_user.id,:question_id => params[:q_id])
		else
			QuestionUpvote.find(up).destroy
		end

		redirect_to '/'
	end

end
