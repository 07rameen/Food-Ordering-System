class ManagementController < ApplicationController
  before_action :authenticate_employee!
  def managerdashboard
  end
end
