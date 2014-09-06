class DrinkIngredient < ActiveRecord::Base
  belongs_to :drink
  belongs_to :ingredient

  UNITS = ['oz','tsp','tbsp','dash', 'barspoon','rinse']

  validates :ingredient_id, uniqueness: {scope: :drink_id}, presence: true
  validates_presence_of :amount
end
