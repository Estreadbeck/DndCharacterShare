class ArchetypeFeature < ApplicationRecord
belongs_to :archetypes
validates_presence_of :feature_name, :feature_level, :feature_desc
end