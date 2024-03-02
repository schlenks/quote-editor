# frozen_string_literal: true

# This is the top-level documentation for the ApplicationMailer class.
# ApplicationMailer is the base class for all mailers in the application.
# It inherits from ActionMailer::Base and is intended to be used as an abstract class.
# Any shared logic or configurations for mailers can be placed here.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
