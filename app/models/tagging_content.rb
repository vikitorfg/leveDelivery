class TaggingContent < ApplicationRecord
  belongs_to :content
  belongs_to :product
end
