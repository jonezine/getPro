class HomePageController < ApplicationController

  #Apenas tem acesso quem estiver logedin.
  before_filter :authenticate_user!

  def home
    @messages = Message.all
    @companies = Company.all
    @users = User.all
  end

  def create
    @message = Message.new(message_params)
    redirect_to home
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_language
    @message = Message.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_params
    params.require(:message).permit(:title,:content,:user_id,:image)
  end

end
