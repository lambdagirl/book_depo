class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null:false
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale:2 # eight digits of significance

      t.timestamps
    end
  end
end
