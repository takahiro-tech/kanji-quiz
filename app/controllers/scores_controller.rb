class ScoresController < ApplicationController
  def create
    Score.create(score_params)
  end

  private
    def score_params
      params.permit(result: [], questions: [], answer_text: []).merge(user_id: current_user.id)
    end
end
