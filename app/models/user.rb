class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  has_many :prototypes
  has_many :comments
end


# | email      | string | null: false |
# | password   | string | null: false |
# | name       | string | null: false |
# | profile    | text   | null: false |
# | occupation | text   | null: false |
# | position   | text   | null: false |

# class Sample < ApplicationRecord
#   Sampleモデルにおいて、「a、b、cそれぞれのカラムが空では保存できない」というバリデーションを設定する場合
#   validates :a, presence: true
#   validates :b, presence: true
#   validates :c, presence: true
#   validates :nickname, presence: true, length: { maximum: 6 }
# end
# Userモデルに各カラムのバリデーションを記述した（「emailとpasswordが空だと保存できない」というバリデーションは標準で用意されているため、記述する必要はない）