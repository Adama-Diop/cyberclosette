class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index
    @user = current_user
  end

  def home
  end

  def favoris
    @user_favorite_clothes = []
    Favorite.where(user: current_user).each do |favorite|
      @user_favorite_clothes << favorite.clothe
    end

  end
end
