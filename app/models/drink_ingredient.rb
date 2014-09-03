class DrinkIngredient < ActiveRecord::Base
  belongs_to :drink
  belongs_to :ingredient

  UNITS = ['oz','tsp','tbsp','mL','dash', 'barspoon','rinse']

  validates :ingredient_id, uniqueness: {scope: :drink_id}, presence: true
  validates :drink_id, presence: true
  validates_presence_of :amount
  validates_presence_of :amount_unit
end
