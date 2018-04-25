class Character < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :character_image, CharacterUploader

  validates_presence_of :name, :race, :character_class, :level

end
