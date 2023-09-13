class PostsController < ApplicationController 
    def index
        @posts = Post.all
        @users = User.all
    end
    def show 
        @posts = Post.all
    end
    def new
        @post = Post.new()
    end
    def create
        @post = Post.new(posts_params)
        if @post.save!
            redirect_to root_path, notice: "Article created!"
        else
            render action: 'new'
        end
    end

    private
    def posts_params
        params.require(:post).permit(:heading,:body,:user_id)
    end
end
