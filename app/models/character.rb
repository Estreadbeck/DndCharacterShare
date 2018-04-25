class Character < ApplicationRecord

  mount_uploader :character_image, CharacterUploader

  validates_presence_of :name, :race, :character_class, :level

end
