class CreateUserPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :user_phrases do |t|
      t.references :user, foreign_key: true
      t.references :phrase, foreign_key: true

      t.timestamps
    end
  end
end
