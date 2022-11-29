class CreateClotheCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :clothe_categories do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
