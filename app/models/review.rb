# frozen_string_literal: true

class Review < ApplicationRecord
  RATING = (0..5).to_a.freeze
  validates :content, :rating, presence: true
  validates :rating, inclusion: {in: RATING}, numericality: { only_integer: true }
  belongs_to :restaurant
end
