class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
