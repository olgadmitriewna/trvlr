class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.text :english
      t.text :translation
      t.references :vocabulary, foreign_key: true

      t.timestamps
    end
  end
end
