class AddingColToQuestionUpvotes < ActiveRecord::Migration
  def change
  	add_reference :question_upvotes, :question, index: true, foreign_key: true
  end
end
