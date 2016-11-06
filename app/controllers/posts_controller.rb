class PostsController < ApplicationController
    
    before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
    
    def index
        @posts = Post.all.order(created_at: :desc).limit(11)
    end
    
    def show
        @post=Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.create(post_params)
        if @post.valid?
            redirect_to post_path(params[:post_id])
          else
            render :new
        end
    end
    
    def edit
        @post=Post.find(params[:id])
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
         if @post.valid?
            redirect_to post_path(params[:post_id])
         else
           render :edit
         end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to root_path
    end
    
    private
    def post_params
      params.require(:post).permit(:title, :author, :postimg, :content, :created_at)
    end
    
end
