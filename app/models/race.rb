class Race < ApplicationRecord
  validates_presence_of :race_name, :race_description

  has_many :characters

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end