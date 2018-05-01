class Race < ApplicationRecord
  validates_presence_of :race_name, :race_description
  extend FriendlyId
  friendly_id :race_name, use: :slugged


  has_many :characters
  has_many :traits, dependent: :destroy
  accepts_nested_attributes_for :traits,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs['name'].blank?}

  def self.with_characters
    includes(:characters).where.not(characters: { id: nil})
  end
end