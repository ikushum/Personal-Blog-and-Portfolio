class Comment < ActiveRecord::Base
    belongs_to :post
    validates :name, :comment, :email, :post_id, presence: true
end
