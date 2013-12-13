class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  #Apenas tem acesso quem estiver logedin.
  before_filter :authenticate_user!

  #Apenas o proprio pode alterar os seus dados
  before_filter :correct_user , :only => [:edit, :update]





  # GET /users
  # GET /users.json
  def index
    #@users = User.all   #NOTA QUE USER E A ENTIDADE NA BASE DE DADOS .ALL MOSTRA TODOS!
    @users = User.paginate(page: params[:page])
  end

  # GET /users/1
  # GET /users/1.json
  def show

    @messages = @user.messages.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update( user_params )
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def connections
      @user = current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:avatar, :name, :country, :gender, :email, :birth_date, :summary)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(users_url) unless @user == current_user
    end
end
