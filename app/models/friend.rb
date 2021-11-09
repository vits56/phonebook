# frozen_string_literal: true

class Friend < ApplicationRecord
  belongs_to :user
  # kaminari
  paginates_per 5
end
