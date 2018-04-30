class CharacterClass < ApplicationRecord
  validates_presence_of :title, :description
  extend FriendlyId
  friendly_id :title, use: :slugged


  has_many :characters

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end