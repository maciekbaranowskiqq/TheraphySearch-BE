module Api
  module V1
    class ArticlesController < ApplicationController

      def index
        articles = Article.order('created_at DESC');
        render json: {articles:articles}, status: :ok
      end

      def show
        articles = Article.find(params[:id]);
        render json: articles, status: :ok
      end   
    end
  end
end
