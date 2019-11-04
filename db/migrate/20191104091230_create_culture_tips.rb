class CreateCultureTips < ActiveRecord::Migration[5.2]
  def change
    create_table :culture_tips do |t|
      t.string :title
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
