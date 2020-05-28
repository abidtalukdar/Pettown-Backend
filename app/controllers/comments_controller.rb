class CommentsController < ApplicationController
    def create
        comment = Comment.create(image_id: params[:image_id], user_id: params[:user_id], comment: params[:comment])
        render json: comment
    end

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def destroy
        comment_instance = Comment.find_by(id: params[:id])
        comment_instance.destroy
        render json: comment_instance
    end 
end
