class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null:false
      t.text :description, null:false
      t.string :image_url, null:false
      t.decimal :price, precision: 8, scale:2, null:false # eight digits of significance

      t.timestamps
    end
  end
end
