class Character < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :character_image, CharacterUploader

  validates_presence_of :name, :race_id, :character_class_id, :level
  validates :level, :inclusion => 1..20
  belongs_to :character_class
  belongs_to :race

end
