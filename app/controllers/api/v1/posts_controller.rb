class Api::V1::PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts, status: 200
      end
    
      def create
        @post = Post.create(post_params)
        render json: @post, status: 201
      end
    
      def destroy
        post = Post.find(params[:id])
        if post.destroy
          render json: {postId: post.id}, status: 200
        end
      end
    
      def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
          render json: @post, status: 200
        end
      end
    
      private
        def post_params
          params.require(:post).permit(:body)
        end

end
