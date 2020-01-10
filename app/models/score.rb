class Score < ApplicationRecord
  serialize :result
  serialize :questions
  serialize :answer_text
  belongs_to :user
end
