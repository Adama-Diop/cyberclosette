class AddUserReferencesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :outfits, :user, foreign_key: true
  end
end
