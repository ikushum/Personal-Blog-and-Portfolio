class CommentsController < ApplicationController
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        if @comment.valid?
            redirect_to root_path
        else
            flash[:alert] = "Invalid input."
            redirect_to root_path
        end
    end

    def edit 
    end
    
    def update 
    end
    
    def destroy 
    end
    
    private 
    def comment_params
      params.require(:comment).permit(:name,:email,:comment,:post_id)
    end
    
    
end
