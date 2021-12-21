class Admin::HomeController < Admin::ApplicationController
  def index
    @conferences = Confernce.all.order('start_date desc')
  end
end
