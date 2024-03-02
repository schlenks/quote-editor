# frozen_string_literal: true

# This module provides helper methods for views across the application.
# It is intended to be included in views where application-wide helper methods
# are needed, abstracting complexity away from the view templates and ensuring
# consistency across different parts of the application.
module ApplicationHelper
  def render_turbo_stream_flash_messages
    turbo_stream.prepend 'flash', partial: 'layouts/flash'
  end
end
