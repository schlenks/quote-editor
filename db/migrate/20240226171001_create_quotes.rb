# frozen_string_literal: true

# This migration creates the `quotes` table with the necessary fields.
# It includes a `name` column which is a string and cannot be null, and
# the default Rails `timestamps` which adds `created_at` and `updated_at` columns.
class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
