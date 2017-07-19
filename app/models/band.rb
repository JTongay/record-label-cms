class Band < ApplicationRecord
  has_and_belongs_to_many :musicians
  has_and_belongs_to_many :albums
end
