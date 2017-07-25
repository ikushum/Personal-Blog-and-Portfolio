class Post < ActiveRecord::Base
	def to_param
		"#{id} #{title}"
	end
    validates :title, :author, :content, :postimg, presence: true
    validates :content, length: { minimum: 60 }
    has_many :comments
end
