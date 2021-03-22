class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        if @comment.save
          redirect_to prototype_path(@comment.prototype)
        else
          @prototype = @comment.prototype
          @comments = @prototype.comments
          render "prototypes/show"
        end
        # createアクションに、データが保存されたときは詳細ページにリダイレクトされるよう記述をした
        # createアクションに、データが保存されなかったときは詳細ページに戻るようrenderを用いて記述した
    end

    
    private
    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
    end
end



# commentsコントローラーにcreateアクションを設定した（アクション内の処理は書かない）
# commentsコントローラーのprivateメソッドにストロングパラメーターをセットし、特定の値のみを受け付けるようにした。且つ、user_idとprototype_idもmergeした