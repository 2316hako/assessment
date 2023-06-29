class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :condition

  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
end
