class AddingUserToUpvotes < ActiveRecord::Migration
  def change
  	add_reference :question_upvotes, :user, index: true, foreign_key: true
  end
end
