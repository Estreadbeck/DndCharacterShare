class Character < ApplicationRecord
  enum status: {personal: 0, published: 1}
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :character_image, CharacterUploader

  validates_presence_of :name, :race_id, :character_class_id, :level
  validates :level, :inclusion => 1..20
  belongs_to :character_class
  belongs_to :race
  belongs_to :user, optional: true

  scope :characters_by, ->(user) { where(user_id: user.id) }

end
