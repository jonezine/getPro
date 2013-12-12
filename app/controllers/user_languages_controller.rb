class UserLanguagesController < ApplicationController

  #Apenas tem acesso quem estiver logedin.
  before_filter :authenticate_user!

  def create
    @user_language = UserLanguage.new(user_language_params)
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user_language
    @user_language = UserLanguage.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_language_params
    params.require(:user_language).permit(:user_id, :language_id)
  end

end
