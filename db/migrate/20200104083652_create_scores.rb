class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.text :result
      t.text :questions
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
