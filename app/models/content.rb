class Content < ApplicationRecord
  has_many :tagging_content, dependent: :destroy
  has_many :product, through: :tagging_content
end
