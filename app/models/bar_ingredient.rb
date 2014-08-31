class BarIngredient < ActiveRecord::Base
  belongs_to :bar
  belongs_to :ingredient
end
