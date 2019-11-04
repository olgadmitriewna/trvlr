class CreateVaccines < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccines do |t|
      t.string :icon
      t.string :name
      t.references :health, foreign_key: true

      t.timestamps
    end
  end
end
