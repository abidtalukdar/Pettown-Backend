class Follow < ApplicationRecord
  belongs_to :follower, class_name: 'User' # person that follows you
  belongs_to :followee, class_name: 'User' # person you follow
end
