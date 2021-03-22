class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :prototype

    validates :text, presence: true

end
# Commentモデルに、userおよびprototypeに対するアソシエーションを設定した
# UserモデルおよびPrototypeモデルにも、commentに対するアソシエーションを設定した（必要に応じてdependent: :destroyオプションを使用した）