class CreateOutfitItems < ActiveRecord::Migration[6.0]
  def change
    create_table :outfit_items do |t|

      t.integer :outfit_id
      t.integer :item_id
      # t.references :outfit, null: false, foreign_key: true
      # t.references :item, null: false, foreign_key: true



      t.timestamps
    end
  end
end
