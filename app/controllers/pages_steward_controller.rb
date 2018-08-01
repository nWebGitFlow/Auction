class PagesStewardController < ApplicationController


  def index
    @userAd = User.find_by(users_status_id: 1)
  end

  def registration
  end

  def politics
  end
end
