# frozen_string_literal: true

# This is the top-level documentation for the Quote model.
# The Quote model represents a quotation and is responsible for validating
# the presence of the name attribute before saving to the database.
class Quote < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
  scope :ordered, -> { order(id: :desc) }

  # after_create_commit -> { broadcast_prepend_later_to "quotes" }
  # after_update_commit -> { broadcast_replace_later_to "quotes" }
  # after_destroy_commit -> { broadcast_remove_to "quotes" }
  # Those three callbacks are equivalent to the following single line
  # broadcasts_to ->(_quote) { 'quotes' }, inserts_by: :prepend
  broadcasts_to ->(quote) { [quote.company, 'quotes'] }, inserts_by: :prepend
end
