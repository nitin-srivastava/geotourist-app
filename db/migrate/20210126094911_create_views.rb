class CreateViews < ActiveRecord::Migration[6.0]
  def change
    create_table :views do |t|
      t.references :user, null: true, foreign_key: true
      t.references :tour, null: true, foreign_key: true
      t.string :full_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
