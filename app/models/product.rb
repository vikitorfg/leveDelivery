class Product < ApplicationRecord
    validates_presence_of :title, :description, :image_url, :price, :calories, :protein, 
                            :carbohidrates, :fibers, :total_fat, 
                            :sat_fat, :sodium

    validates :title, uniqueness: true

    validates :price, :calories, :protein, :carbohidrates, :fibers, :total_fat, 
                            :sat_fat, :sodium, numericality: { greater_than_or_equal_to: 0 }
    
    validates   :image_url, allow_blank: true, format: {
                with: %r{\.(gif|jpg|png)\z}i,
                message: 'must be a URL for GIF, JPG or PNG image.'
                }

    has_many :line_items

    before_destroy :ensure_not_referenced_by_any_line_item

    private
# ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'Line Items present')
            throw :abort
    end

end
