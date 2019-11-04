class CreateHealthTips < ActiveRecord::Migration[5.2]
  def change
    create_table :health_tips do |t|
      t.references :health, foreign_key: true
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
