class CreateSiteContents < ActiveRecord::Migration
  def self.up
    create_table :site_contents do |t|
      t.string :text_key
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :site_contents
  end
end
