class UserLanguagesController < ApplicationController

  #Apenas tem acesso quem estiver logedin.
  before_filter :authenticate_user!

  def new
  end
end
