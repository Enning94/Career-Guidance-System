class TraitScore < ApplicationRecord
  belongs_to :user
  belongs_to :personality_trait
end
