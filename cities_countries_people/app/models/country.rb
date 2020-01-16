class Country < ApplicationRecord
  has_many :people
  has_many :cities, through: :people

  validates :name, presence: true, uniqueness: true
  validates :continent, presence: true
end
