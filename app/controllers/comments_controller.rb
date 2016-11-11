class CommentsController < ApplicationController
    
    before_action :authenticate_admin!, only: [:destroy]
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        if @comment.valid?
            respond_to do |format|
              format.html {redirect_to post_path(@post)}
              format.js {}
            end   
        else
            flash[:alert] = "Invalid input."
            redirect_to post_path(params[:post_id])
        end
    end
    
    def destroy 
        @comment=Comment.find(params[:id])
        @comment.destroy
        redirect_to post_path(params[:post_id])
    end
    
    private 
    def comment_params
      params.require(:comment).permit(:name,:email,:comment,:post_id)
    end
    
    
end
