class AddDetailsToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :choice1, :string
    add_column :questions, :choice2, :string
    add_column :questions, :choice3, :string
    add_column :questions, :answer, :integer
  end
end
