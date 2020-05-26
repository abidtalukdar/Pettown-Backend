class LikeSerializer < ActiveModel::Serializer
  attributes :id, :image_id, :user_id
  has_one :image
  has_one :user
end
