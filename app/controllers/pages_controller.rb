# frozen_string_literal: true

# This controller handles static pages that do not require user authentication.
# It inherits from ApplicationController and skips the authentication check for the home action.
# This is typically used for pages like the home page, about page, or contact page,
# where you want unauthenticated users to have access.
class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end
end
