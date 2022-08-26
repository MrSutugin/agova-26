class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :r_type
      t.string :name_with_type
      t.string :federal_district
      t.string :kladr_id
      t.string :fias_id
      t.string :okato
      t.string :oktmo
      t.string :tax_office
      t.string :postal_code
      t.string :iso_code
      t.string :timezone
      t.string :geoname_code
      t.string :geoname_id
      t.string :geoname_name
      t.string :geo_lat
      t.string :geo_lon

      t.timestamps
    end
  end
end
