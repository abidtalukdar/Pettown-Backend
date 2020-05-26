class FollowsController < ApplicationController
    def create
        follow_instance = Follow.create(follower_id: params[:follower_id], followee_id: params[:followee_id])
        render json: follow_instance
    end

    def delete
        follow_instance = Follow.find_by(follower_id: params[:currentUserId], followee_id: params[:followeeId])
        follow_instance.destroy
        render json: follow_instance
    end
end
