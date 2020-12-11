class CreateTaggingContents < ActiveRecord::Migration[6.0]
  def change
    create_table :tagging_contents do |t|
      t.references :content, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
