class HomePageController < ApplicationController
  def home
    @messages = Message.all
    @companies = Company.all
  end

  def create
    @message = Message.new(message_params)

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
