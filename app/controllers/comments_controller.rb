class CommentsController < ApplicationController
    def create
        post = Post.find(params[:post_id])
        post.comments.create(comments_params)
        flash[:info] = "Comentario creado"
        redirect_to post
    end

    private
        def comments_params
            params.require(:comment).permit(:body).merge(user: current_user)
        end
        
    
end
