class Content < ApplicationRecord
  has_many :tagging_content
  has_many :product, through: :tagging_content
end
