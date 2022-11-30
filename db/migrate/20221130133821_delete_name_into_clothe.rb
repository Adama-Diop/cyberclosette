class DeleteNameIntoClothe < ActiveRecord::Migration[7.0]
  def change
    remove_column :clothes, :name
  end
end
