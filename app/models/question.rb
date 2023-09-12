class Question < ApplicationRecord
  belongs_to :personality_trait
  has_many :responses
end
