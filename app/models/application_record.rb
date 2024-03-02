# frozen_string_literal: true

# This is the top-level documentation for the ApplicationRecord class.
# ApplicationRecord is the base class for all models in the application.
# It inherits from ActiveRecord::Base and is intended to be used as an abstract class.
# Any shared logic or configurations for models can be placed here.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
