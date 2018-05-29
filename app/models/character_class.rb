class CharacterClass < ApplicationRecord
  validates_presence_of :title, :description
  extend FriendlyId
  friendly_id :title, use: :slugged


  has_many :characters
  has_many :archetypes
  has_many :features, dependent: :destroy
  accepts_nested_attributes_for :features,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs['name'].blank?}

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end