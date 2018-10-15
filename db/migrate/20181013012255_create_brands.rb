class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.text :name
      t.text :founded
      t.text :ceo
      t.text :hq
      t.text :image

      t.timestamps
    end
  end
end
