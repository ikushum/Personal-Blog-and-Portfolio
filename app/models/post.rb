class Post < ActiveRecord::Base
    validates :title, :author, :content, :postimg, presence: true
    validates :content, length: { minimum: 60 }
    has_many :comments
end
