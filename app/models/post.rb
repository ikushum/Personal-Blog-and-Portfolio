class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title
    validates :title, :author, :content, :postimg, presence: true
    validates :content, length: { minimum: 60 }
    has_many :comments
end
