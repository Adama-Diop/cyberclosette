class FavoritesController < ApplicationController
  def destroy
    redirect_to favorite_path, status: :see_other
  end

  def add_to_favorites
    clothe = Clothe.find(params[:clothe])
    favorite = Favorite.new(
      user: current_user,
      clothe: clothe
    )

    if favorite.save!
      redirect_to favoris_path
    else
      render :show
    end
  end
end
