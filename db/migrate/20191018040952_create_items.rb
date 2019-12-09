class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :color
      t.string :image
      t.string :brand
      t.integer :user_id
      t.integer :category_id
      # t.references :user, null: false, foreign_key: true
      # t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
