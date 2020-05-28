class User < ApplicationRecord
    has_secure_password

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow' # User becomes the follower and the person the user followes is the followee
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow' # User becomes the followee and the person that follows the user is the follower
    has_many :followers, through: :following_users
    
    has_many :images, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates_uniqueness_of :username, :case_sensitive => false
    validates :password, presence: true, length: {:within => 6..20}, allow_nil: true

end