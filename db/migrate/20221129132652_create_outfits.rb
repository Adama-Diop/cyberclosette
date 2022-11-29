class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.date :date
      t.string :today_weather

      t.timestamps
    end
  end
end
