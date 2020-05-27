class ImagesController < ApplicationController

    def create
        image = Cloudinary::Uploader.upload(params[:image])
        image_obj = Image.create(user_id: params[:user_id], image_url: image["url"], caption: params[:caption], date: DateTime.now.strftime("%B %d, %Y").to_s)
        render json: image_obj
    end
    
    def index
        images = Image.all
        render json: images
    end

    def show
        image = Image.find(params[:id])
        render json: image
    end

    def likes 
        image = Image.find(params[:id])
        likes = image.likes
        render json: likes
    end

    def comments 
        image = Image.find(params[:id])
        comments = image.comments
        render json: comments
    end

end
