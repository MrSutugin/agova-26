class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :website
      t.string :bio
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
