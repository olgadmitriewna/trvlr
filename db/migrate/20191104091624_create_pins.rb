class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.references :place, foreign_key: true
      t.float :latitude
      t.float :longtitude
      t.text :description
      t.string :address
      t.string :photo
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
