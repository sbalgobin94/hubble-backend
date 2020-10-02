class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts, status: 200
      end
    
      def create
        @post = Post.create(post_params)
        render json: @post
      end
    
      def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: { message: "Post deleted!" }
      end
    
      def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
          render json: @post, status: 200
        end

        

      end
    
      private
        def post_params
          params.require(:post).permit(:title, :description, :image_url, :user_id, :likes)
        end

end
