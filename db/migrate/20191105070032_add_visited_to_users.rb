class AddVisitedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :visited, :string
  end
end
