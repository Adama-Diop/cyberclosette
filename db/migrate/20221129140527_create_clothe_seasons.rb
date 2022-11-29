class CreateClotheSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :clothe_seasons do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
