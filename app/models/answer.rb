class Answer < ActiveRecord::Base

  belongs_to :user
  belongs_to :question
  has_many :upvotes, as: :type
  validates :answer, presence: true, length: {maximum: 300}


  def upvote_string user_id
  	if upvoted_by user_id
  		return "Upvoted"
  	else
  		return "Upvote"
  	end

  end
end
