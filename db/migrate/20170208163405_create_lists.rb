class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :organization
      t.text :organization_description
      t.string :organization_url
      t.string :image_url

      t.timestamps
    end
  end
end
