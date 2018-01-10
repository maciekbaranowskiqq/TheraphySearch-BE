module Api
  module V1
    class PostsController < ApplicationController

      def index
        @posts = Post.all.order('created_at DESC')
      end

      def show
        @posts = Post.find(params[:id])
        # render json: {status: 'success', message: 'loaded Counsellor', data:counsellorscounsellors}, status: :ok
      end

    end
  end
end
