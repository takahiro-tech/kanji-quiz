class AddAnswerTextToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :answer_text, :text
  end
end
