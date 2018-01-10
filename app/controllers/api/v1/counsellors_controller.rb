module Api
  module V1
    class CounsellorsController < ApplicationController

      def index
        @counsellors = Counsellor.all.order('created_at DESC')
         # render json: {status: 'success', message: 'loaded Counsellor', data:counsellors}, status: :ok
      end

      def show
        @counsellors = Counsellor.find(params[:id])
        # render json: {status: 'success', message: 'loaded Counsellor', data:counsellorscounsellors}, status: :ok
      end

      def create
        @counsellor = Counsellor.new(article_params)

        if @counsellor.save
          render :show, status: :created
        else
          render json: @counsellor.errors, status: :unprocessable_entity
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
