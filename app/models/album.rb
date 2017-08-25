class Album < ApplicationRecord
  has_and_belongs_to_many :bands
  has_and_belongs_to_many :songs
  accepts_nested_attributes_for :songs, allow_destroy: true
end
