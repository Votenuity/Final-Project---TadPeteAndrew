class WelcomeController < ApplicationController


  def index
    @user = current_user
    @races = Race.all
  end


end
