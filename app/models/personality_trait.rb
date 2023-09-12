class PersonalityTrait < ApplicationRecord
  has_many :career_traits
  has_many :questions
  has_many :scores
end
