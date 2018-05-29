class Trait < ApplicationRecord
  belongs_to :race
  validates_presence_of :name, :description
end