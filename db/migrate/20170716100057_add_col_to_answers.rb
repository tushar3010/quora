class AddColToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :answer, :string
  end
end
