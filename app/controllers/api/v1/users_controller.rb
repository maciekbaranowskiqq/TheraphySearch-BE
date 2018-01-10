module Api
  module V1
    class UsersController < ApplicationController

      def index
        users = User.order('created_at DESC');
        render json: {users:users}, status: :ok
      end

      def show
        users = User.find(params[:id]);
        render json: users, status: :ok
      end
    end
  end
end
