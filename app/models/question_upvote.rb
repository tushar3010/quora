class QuestionUpvote < ActiveRecord::Base
  belongs_to :questions

def upvote_string user_id
  	if question_id_upvoted_by user_id
  		return "Upvoted"
  	else
  		return "Upvote"
  	end
end


end
