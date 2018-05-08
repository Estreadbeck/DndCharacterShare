class Stat < ApplicationRecord
  belongs_to :character
  validates_presence_of :name, :score, :modifier
  validates :score, :inclusion => -5..30

  def self.recent
    order("created_at ASC")
  end
end
