class Person < ApplicationRecord
  belongs_to :country
  belongs_to :city

  validates :gender, inclusion: { in: %w(male female)}
end
