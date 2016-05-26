class Recipe < ActiveRecord::Base

  validates :name, :cuisine, :food_type, :preferences, :portions,
  :time, :difficulty, :ingredients, :instructions, presence: true
end
