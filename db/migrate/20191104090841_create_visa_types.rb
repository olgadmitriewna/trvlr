class CreateVisaTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :visa_types do |t|
      t.string :type
      t.text :description
      t.references :visa, foreign_key: true

      t.timestamps
    end
  end
end
