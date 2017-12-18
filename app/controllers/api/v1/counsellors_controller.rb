module Api
  module V1
    class CounsellorsController < ApplicationController

      def index
        counsellors = Counsellor.order('created_at DESC');
        render json: {status: 'success', message: 'loaded Counsellor', data:counsellors}, status: :ok
      end

      def show
        counsellors = Counsellor.find(params[:id]);
        render json: {status: 'success', message: 'loaded Counsellor', data:counsellorscounsellors}, status: :ok
      end

      def create
        counsellors = Counsellor.new(article_params);

        if counsellors.save
          render json: {status: 'success', message: 'loaded Counsellor', data:counsellors}, status: :ok
        else
          render json: {status: 'error', message: 'Counsellor not saved', data:counsellors.errors}, status: :unprocessable_entity
        end
      end

      private
      def article_params
        params.permit(:title, :body)
      end

      def delete
        counsellors = Counsellor.find(params[:id])
        counsellors.destroy()
        render json: {status: 'success', message: 'loaded Counsellor', data:counsellors}, status: :ok
      end

    end
  end
end
