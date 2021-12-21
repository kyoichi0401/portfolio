class Mypage::HomeController < ApplicationController
  before_action :authenticate_user!, only: :index

  def index
    redirect_to mypage_user_path(current_user)
  end
end
