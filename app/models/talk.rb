class Talk < ApplicationRecord
  validates :message , presence: true
  belongs_to :user, optional: true
  belongs_to :users_room
end

# Error: user must exist
# Rail5からbelongs_toのデフォルトが関連先の値を検査するようになった。Rails4と同様に関連先を検査しないようにするには、belongs_toにoptional: trueを付与すれば良い