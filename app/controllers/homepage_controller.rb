class HomepageController < ApplicationController

    def index
        @posts = Post.all.order(created_at: :desc).limit(2)
    end
    
end

