class HomePageController < ApplicationController

  #Apenas tem acesso quem estiver logedin.
  before_filter :authenticate_user!

  def home
    @messages = Message.all
    @companies = Company.all
    @users = User.all
    @message = Message.new(:user_id => current_user.id)
    @news = News.all
  end

end
