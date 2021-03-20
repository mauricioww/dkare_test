class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @reports = current_user.reports.order('created_at ASC')

  end
end