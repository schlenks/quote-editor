# frozen_string_literal: true

# This is the main controller from which all other controllers in the application inherit.
# It is responsible for global settings and utilities that are applicable across the entire
# application. This controller includes a before_action to authenticate the user before any
# action in a controller that inherits from it is performed. This ensures that only
# authenticated users can access the actions in the application.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  private

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end

  helper_method :current_company
end
