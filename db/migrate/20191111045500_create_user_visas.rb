class CreateUserVisas < ActiveRecord::Migration[5.2]
  def change
    create_table :user_visas do |t|
      t.references :user, foreign_key: true
      t.references :visa, foreign_key: true

      t.timestamps
    end
  end
end
