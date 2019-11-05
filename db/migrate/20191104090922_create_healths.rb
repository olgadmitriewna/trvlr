class CreateHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :healths do |t|
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
