class StaticPagesController < ApplicationController


  def welcome
  end

  def aboutus
  end

  def search
    @users = User.search(params[:search])
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def language_params
    params.require(:search).permit(:search)
  end
end
