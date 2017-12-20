module Api
  module V1
    class ArticlesController < ApplicationController

      def index
        articles = Article.order('created_at DESC');
        render json: {status: 'success', message: 'loaded articles', data:articles}, status: :ok
      end

      def show
        articles = Article.find(params[:id]);
        render json: {status: 'success', message: 'loaded article', data:articles}, status: :ok
      end

      def create
        article = Article.new(article_params);

        if article.save
          render json: {status: 'success', message: 'loaded articles', data:article}, status: :ok
        else
          render json: {status: 'error', message: 'article not saved', data:article.errors}, status: :unprocessable_entity
        end
      end

      private
      def article_params
        params.permit(:title, :body)
      end


      def delete
        article = Article.find(params[:id])
        article.destroy()
        render json: {status: 'success', message: 'loaded article', data:articles}, status: :ok
      end

    end
  end
end
