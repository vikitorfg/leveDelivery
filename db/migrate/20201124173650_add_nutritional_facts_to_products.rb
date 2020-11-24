class AddNutritionalFactsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :calories, :int
    add_column :products, :protein, :int
    add_column :products, :carbohidrates, :int
    add_column :products, :fibers, :int
    add_column :products, :total_fat, :int
    add_column :products, :sat_fat, :int
    add_column :products, :sodium, :int
  end
end
