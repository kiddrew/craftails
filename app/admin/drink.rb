ActiveAdmin.register Drink do
  permit_params :name

  index do
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.has_many :drink_ingredients do |i|
        i.input :amount
        i.input :amount_unit, collection: DrinkIngredient::UNITS
        i.input :ingredient_id
      end
      f.input :garnish, collection: Garnish.all
      f.input :instructions
      f.input :description
    end
    f.actions
  end
end
