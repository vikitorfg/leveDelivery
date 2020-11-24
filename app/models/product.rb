class Product < ApplicationRecord
    validates_presence_of :title, :description, :price, :calories, :protein, 
                            :carbohidrates, :fibers, :total_fat, 
                            :sat_fat, :sodium

    validates :price, :calories, :protein, :carbohidrates, :fibers, :total_fat, 
                            :sat_fat, :sodium, numericality: { greater_than_or_equal_to: 0 }
end
