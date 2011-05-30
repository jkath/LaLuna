class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :price
      t.boolean :is_active
      t.boolean :show_in_slideshow
      t.boolean :is_sold
      t.boolean :is_forsale

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
