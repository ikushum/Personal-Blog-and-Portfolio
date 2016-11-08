class Comment < ActiveRecord::Base
    belongs_to :post
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :name, :comment, :email, :post_id, presence: true
    validates :email , format: VALID_EMAIL_REGEX 
end
