class Bar < ActiveRecord::Base
  belongs_to :user
  has_many :bar_ingredients
  has_many :ingredients, through: :bar_ingredients
end
