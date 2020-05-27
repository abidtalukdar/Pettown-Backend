class CommentSerializer < ActiveModel::Serializer
  attributes :id, :image_id, :user_id, :comment
  has_one :image
end
