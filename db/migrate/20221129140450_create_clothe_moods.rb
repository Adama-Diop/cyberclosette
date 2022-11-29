class CreateClotheMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :clothe_moods do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
