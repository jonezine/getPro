class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]



  # GET /friendships
  # GET /friendships.json
  def index
    @friendships = Friendship.all
  end

  # GET /friendships/1
  # GET /friendships/1.json
  def show
  end

  # GET /friendships/new
  def new
    @friendship = Friendship.new
  end

  # GET /friendships/1/edit
  def edit
  end

  # POST /friendships
  # POST /friendships.json
  def create
    if params[:status] == "pending"
      arefriends = Friendship.where(:user_id => params[:user_id], :friend_id  => params[:friend_id])
      if arefriends.empty?
        @friendship = current_user.friendships.build(:friend_id => params[:friend_id], :status => params[:status])
        friend = User.find(params[:friend_id])
        @friendship2 = friend.friendships.build(:friend_id => params[:user_id], :status => 'requested')

        respond_to do |format|
          if @friendship.save
            format.html { redirect_to @friendship, notice: 'Your friendship request has been sent' }
            format.json { render action: 'show', status: :created, location: @friendship }
          else
            format.html { render action: 'new' }
            format.json { render json: @friendship.errors, status: :unprocessable_entity }
          end
          if @friendship2.save
            format.html { redirect_to @friendship2, notice: 'You received a friendship invitation' }
            format.json { render action: 'show', status: :created, location: @friendship2 }
          else
            format.html { render action: 'new' }
            format.json { render json: @friendship2.errors, status: :unprocessable_entity }
          end
        end
      else
        status = arefriends[0].status
        if status == "accepted"
          response = "Already friends"
        else
          if status == "pending"
            response = "Friendship already requested by you"
          else
            response = "You'be been asked for that friendship"
          end
        end
        respond_to do |format|
          format.html { redirect_to connections_user_path(current_user), notice: response }
          format.json { render json: arefriends[0].errors, status: :unprocessable_entity }
        end
      end

    else
      if params[:status] == "accepted"
        @friendship = Friendship.where(:user_id => params[:user_id], :friend_id  => params[:friend_id])
        @friendship[0].status = "accepted"
        @friendship2 = Friendship.where(:user_id => params[:friend_id], :friend_id  => params[:user_id])
        @friendship2[0].status = "accepted"
        respond_to do |format|
          if @friendship[0].save
            format.html { redirect_to @friendship[0], notice: 'Friendship accepted' }
            format.json { render action: 'show', status: :created, location: @friendship[0] }
          else
            format.html { render action: 'new' }
            format.json { render json: @friendship[0].errors, status: :unprocessable_entity }
          end
          if @friendship2[0].save
            format.html { redirect_to @friendship2[0], notice: 'The friendship was accepted' }
            format.json { render action: 'show', status: :created, location: @friendship2[0] }
          else
            format.html { render action: 'new' }
            format.json { render json: @friendship2[0].errors, status: :unprocessable_entity }
          end
        end
      end
    end

  end

  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json
  def update
    if params[:status] == "accepted"
      @friendship = current_user.friendships.build(:friend_id => params[:friend_id], :status => 'accepted')
      friend = User.find(params[:friend_id])
      @friendship2 = friend.friendships.build(:friend_id => params[:user_id], :status => 'accepted')

      respond_to do |format|
        if @friendship.save
          format.html { redirect_to @friendship, notice: 'Your friendship request has been sent' }
          format.json { render action: 'show', status: :created, location: @friendship }
        else
          format.html { render action: 'new' }
          format.json { render json: @friendship.errors, status: :unprocessable_entity }
        end
        if @friendship2.save
          format.html { redirect_to @friendship2, notice: 'You received a friendship invitation' }
          format.json { render action: 'show', status: :created, location: @friendship2 }
        else
          format.html { render action: 'new' }
          format.json { render json: @friendship2.errors, status: :unprocessable_entity }
        end
      end
    end

  end

  # DELETE /friendships/1
  # DELETE /friendships/1.json
  def destroy
    @friendship.destroy
    respond_to do |format|
      format.html { redirect_to friendships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship
      @friendship = Friendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:friendship).permit(:user_id, :friend_id, :status)
    end
end
