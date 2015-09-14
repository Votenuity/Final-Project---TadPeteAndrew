class WelcomeController < ApplicationController

  def index
    @user = current_user
    @legislators = Legislator.all
  end

end
