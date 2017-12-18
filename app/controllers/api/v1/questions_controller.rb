module Api
  module V1
    class QuestionsController < ApplicationController

      def index
        questions = Question.order('created_at DESC');
        render json: {status: 'success', message: 'loaded Counsellor', data:questions}, status: :ok
      end

    end
  end
end
