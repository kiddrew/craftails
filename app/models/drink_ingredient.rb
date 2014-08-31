class DrinkIngredient < ActiveRecord::Base
  belongs_to :drink
  belongs_to :ingredient

  UNITS = ['oz','tsp','tbsp','mL','dash']

  validates_presence_of :amount
  validates_presence_of :amount_unit
end
