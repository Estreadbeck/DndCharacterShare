class CharacterClass < ApplicationRecord
  validates_presence_of :title, :description

  has_many :characters

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end