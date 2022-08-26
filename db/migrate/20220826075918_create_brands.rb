class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :email
      t.string :inn
      t.string :ogrn
      t.string :address
      t.string :geo_lat
      t.string :geo_lon
      t.references :region, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
