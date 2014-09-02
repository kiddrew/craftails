class Drink < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  has_many :drink_ingredients
  has_many :ingredients, through: :drink_ingredients
  belongs_to :garnish
  belongs_to :user

  accepts_nested_attributes_for :drink_ingredients, allow_destroy: true
  validates_presence_of :name
end
