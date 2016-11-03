class Post < ActiveRecord::Base
    validates :title, :author, :content, presence: true
    validates :content, length: { minimum: 60 }, message: 'The content must have at least 60 characters.'
end
