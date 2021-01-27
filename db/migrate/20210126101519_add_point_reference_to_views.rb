class AddPointReferenceToViews < ActiveRecord::Migration[6.0]
  def change
    add_reference :views, :point, null: true, foreign_key: true
  end
end
