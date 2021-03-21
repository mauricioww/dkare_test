class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @reports = current_user.reports.order('created_at ASC')
    @past_apt = current_user.appointments.where('time < ?', 1.days.ago)
    @future_apt = current_user.appointments.where('time > ?', 1.days.ago)

  end
end