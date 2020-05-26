class LikesController < ApplicationController

    def create
        like = Like.create(image_id: params[:image_id], user_id: params[:user_id])
        render json: like
    end

    def index
        likes = Like.all
        render json: likes
    end

    def show
        like = Like.find(params[:id])
        render json: like
    end

    def delete
        like_instance = Like.find_by(image_id: params[:imageId], user_id: params[:userId])
        like_instance.destroy
        render json: like_instance
    end

end
