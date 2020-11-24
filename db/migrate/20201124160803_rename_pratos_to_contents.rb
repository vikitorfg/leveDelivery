class RenamePratosToContents < ActiveRecord::Migration[6.0]
  def change
    rename_table :pratos, :contents
  end
end
