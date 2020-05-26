class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :profile_picture, :followees, :followers, :images, :likes
end
