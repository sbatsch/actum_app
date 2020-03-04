class Question < ApplicationRecord
  validates :description, presence: true 
  validates :description, uniqueness: true 
  validates :description, length: { maximum: 500 }
  validates :category, presence: true
  validates :difficulty_level, presence: true
  # validates :answer_a, presence: true
  # validates :answer_b, presence: true
  # validates :answer_c, presence: true
  # validates :answer_d, presence: true
end
