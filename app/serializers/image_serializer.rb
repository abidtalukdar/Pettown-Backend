class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :caption, :date, :likes
  has_one :user
end
