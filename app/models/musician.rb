class Musician < ApplicationRecord
  has_and_belongs_to_many :bands
  has_and_belongs_to_many :instruments
end
