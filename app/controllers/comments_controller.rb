class CommentsController < ApplicationController
    def index
        @comments = Comments.all
        render json: @comments, status: 200
      end
    
      def create
        @comment = Comment.create(post_params)
        render json: @comment
      end
    
      def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: { message: "Comment deleted!" }
      end
    
      def update
        @comment = Comment.find(params[:id])
        if @comment.update(post_params)
          render json: @comment, status: 200
        end

        

      end
    
      private
        def post_params
          params.require(:comment).permit(:content, :post_id, :user_id)
        end
end
