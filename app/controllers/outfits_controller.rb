class OutfitsController < ApplicationController

  def create_element
    # on récupère l'outfit d'ojd
    @outfit = Outfit.where(user: current_user).find_by(date: Date.today)
    if !@outfit
      @outfit = Outfit.create(user: current_user, date: Date.today)
    end
    # si la tenue n'existe pas on la créer
    # on récupère le clothe avec le clothe_id
    @clothe = Clothe.find(params[:clothe_id].to_i)
    # on associe le clothe à l'outfit

    @outfit.clothes.push(@clothe)
    redirect_to root_path if @outfit.save
  end

  def delete_element
  @outfit = Outfit.where(user: current_user).find_by(date: Date.today)
  @clothe = Clothe.find(params[:clothe_id].to_i)
  @outfit.clothes.delete(@clothe)
  redirect_to root_path
  end
end
