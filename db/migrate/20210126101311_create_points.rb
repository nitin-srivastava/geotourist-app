class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.string :name
      t.text :description
      t.references :tour, null: true, foreign_key: true
      t.string :full_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
