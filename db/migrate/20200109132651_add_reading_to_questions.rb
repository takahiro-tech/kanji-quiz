class AddReadingToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :reading, :string
  end
end
