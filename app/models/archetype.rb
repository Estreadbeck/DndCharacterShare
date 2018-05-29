class Archetype < ApplicationRecord
  validates_presence_of :name, :level, :description
  belongs_to :character_classes
  has_many :archetype_features, dependent: :destroy
  accepts_nested_attributes_for :archetype_features,
                                allow_destroy: true,
                                reject_if: lambda {|attrs| attrs['feature_name'].blank?}

end