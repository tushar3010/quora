class QuestionUpvote < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

def upvote_string user_id
  	if question_id_upvoted_by user_id
  		return "Upvoted"
  	else
  		return "Upvote"
  	end
end

def self.upvote id,user_id
	QuestionUpvote.where(:question_id => id,:user_id => user_id)
end


end
