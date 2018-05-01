class Feature < ApplicationRecord
  belongs_to :character_class
  validates_presence_of :name, :description, :level


end