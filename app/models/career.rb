class Career < ApplicationRecord
  has_many :career_traits
  has_many :user_careers
end
