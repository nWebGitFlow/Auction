class UsersController < ApplicationController
  attr_accessor :runned # атрибут

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      # подтверждение успешной регистрации
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @userAd = User.find_by(users_status_id: 1)
    self.runned = @userAd.action
    @user.action = @userAd.action
  end

  def add_switch
    @userAd = User.find_by(users_status_id: 1)
    @user = User.find(@userAd.id)
    self.runned = !@userAd.action
    @userAd.action = self.runned
    @user.action = @userAd.action
    @user.save
  end

  private

    def user_params
      params.require(:user).permit(:login, :email, :fullname, :password,
                                   :password_confirmation, :users_status_id,
                                   :processing_pd)
    end
end
