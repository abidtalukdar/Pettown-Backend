class UsersController < ApplicationController

    def create
        image = Cloudinary::Uploader.upload(params[:profile_picture])
        # user = User.where('lower(username) = ?', params[:username].downcase).first
        user = User.create(username: params[:username], password: params[:password], name: params[:name], bio: params[:bio], profile_picture: image["url"], location: nil)
        session[:user_id] = user.id
        render json: user
    end

    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find(params[:id])
        render json: user
    end

    def suggested_followers
        user = User.find(params[:id])
        suggested_followers = User.all.select {|suggested_follower| !user.friends.include?(suggested_follower) && suggested_follower.username != user.username}.shuffle.slice(0, 3)
        render json: suggested_followers
    end 

    def images
        user = User.find(params[:id])
        images = user.images
        render json: images
    end

    def likes 
        user = User.find(params[:id])
        likes = user.likes
        render json: likes
    end

    def followees
        user = User.find(params[:id])
        followees = user.followees
        render json: followees
    end

    def followers
        user = User.find(params[:id])
        followers = user.followers
        render json: followers
    end

    def followees_images
        user = User.find(params[:id])
        followees_images = []
        user.followees.each {|followee| followee.images.each {|followees_image| followees_images << followees_image}}
        render json: followees_images
    end

end
