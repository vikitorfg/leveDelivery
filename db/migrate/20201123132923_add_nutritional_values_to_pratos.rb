class AddNutritionalValuesToPratos < ActiveRecord::Migration[6.0]
  def change
    add_column :pratos, :calories, :int
    add_column :pratos, :protein, :int
    add_column :pratos, :carbohidrates, :int
    add_column :pratos, :fibers, :int
    add_column :pratos, :total_fat, :int
    add_column :pratos, :sat_fat, :int
    add_column :pratos, :sodium, :int
  end
end
