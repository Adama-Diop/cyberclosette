class OutfitsController < ApplicationController

  def create_element
    # on récupère l'outfit d'ojd
    @outfit = Outfit.find_for_today(current_user)
    if !@outfit
      @outfit = Outfit.create(user: current_user, date: Date.today)
    end
    # si la tenue n'existe pas on la créer
    # on récupère le clothe avec le clothe_id
    @clothe = Clothe.find(params[:clothe_id].to_i)
    # on associe le clothe à l'outfit
    if !Clothe.find_by_category(@clothe.categories.first, @outfit.clothes)
      @outfit.clothes.push(@clothe)
    end

    redirect_to root_path(clothe: @clothe) if @outfit.save
  end

  def delete_element
    @outfit = Outfit.find_for_today(current_user)
    @clothe = Clothe.find(params[:clothe_id].to_i)
    @outfit.clothes.delete(@clothe)
    redirect_to root_path
  end
end
