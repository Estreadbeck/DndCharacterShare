class Race < ApplicationRecord
  validates_presence_of :race_name, :race_description
  extend FriendlyId
  friendly_id :race_name, use: :slugged


  has_many :characters

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end