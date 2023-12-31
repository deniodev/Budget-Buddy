class Item < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :payments, dependent: :destroy
  has_many :categories, through: :payments

  validates :name, :author_id, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
