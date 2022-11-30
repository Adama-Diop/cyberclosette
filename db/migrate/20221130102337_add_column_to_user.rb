class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :pseudo, :string
    add_column :users, :first_name, :string
    add_column :users, :city, :string
  end
end
