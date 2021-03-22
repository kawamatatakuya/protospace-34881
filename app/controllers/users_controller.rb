class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
end

# usersコントローラーのshowアクションにインスタンス変数@userを定義した。
# 且つ、Pathパラメータで送信されるID値で、Userモデルの特定のオブジェクトを取得するように記述し、それを@userに代入した