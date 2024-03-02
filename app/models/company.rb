# frozen_string_literal: true

# This is the top-level documentation for the Company model.
# The Company model represents a business entity and is responsible for validating
# the presence of the name attribute before saving to the database.
class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :quotes, dependent: :destroy

  validates :name, presence: true
end
