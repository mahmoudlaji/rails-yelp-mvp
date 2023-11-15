class Restaurant < ApplicationRecord

CATEGORYS =  ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :adresse, presence: true
  validates :category, presence: true, inclusion: {in:CATEGORYS}
 has_many :reviews, dependent: :destroy
end
