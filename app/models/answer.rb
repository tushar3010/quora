class Answer < ActiveRecord::Base

  belongs_to :user
  belongs_to :question
  #has_many :upvotes
  validates :content, presence: true, length: {maximum: 300}

  def upvoted_by user_id
  	Upvote.where(answer_id: id, user_id: user_id).length > 0
  end


  def upvote_string user_id
  	if upvoted_by user_id
  		return "Upvoted"
  	else
  		return "Upvote"
  	end

  end
end
