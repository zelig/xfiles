class CreateXfiles < ActiveRecord::Migration
  def change
    create_table :xfiles do |t|
      t.string :name
      t.string :slug
      t.text :text
      t.text :html
      t.boolean :markdown
      t.boolean :sticky
      t.integer :position
      t.boolean :secret
      t.string :tags

      t.timestamps
    end
  end
end
