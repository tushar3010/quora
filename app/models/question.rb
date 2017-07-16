class Question < ActiveRecord::Base

  belongs_to :user
  has_many :upvotes
  has_many :answers
  validates :content, presence: true, length: {maximum: 140}

  def upvoted_by user_id
  	Upvote.where(quetion_id: id, user_id: user_id).length > 0
  end


  def upvote_string user_id
  	if upvoted_by user_id
  		return "Upvoted"
  	else
  		return "Upvote"
  	end
end


end
