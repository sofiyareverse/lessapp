class Admins::BaseController < ApplicationController
  before_action :authenticate_admin!
  before_action :check_admin

  protected

  def check_admin
    redirect_to root_path, alert: 'You have no rights' unless current_admin.present?
  end
end
  