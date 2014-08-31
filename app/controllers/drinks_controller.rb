class DrinksController < InheritedResources::Base
  before_filter :authenticate_user!, only: [:new, :create]

  def create
    tmp = {}
    params['drink']['drink_ingredients_attributes'].each do |k,v|
      if v['amount'].present? and v['amount_unit'].present? and v['ingredient_id'].present?
        tmp[k] = v
      end
    end
    params['drink']['drink_ingredients_attributes'] = tmp

    @drink = build_resource
    @drink.user_id = current_user

    create!
  end

  def new
    @drink = Drink.new
    6.times do
      @drink.drink_ingredients.build
    end
    new!
  end

  def random
    @drink = Drink.order("random()").first

    
  end

  def permitted_params
    params.permit(
      :drink => [
        :name,
        :garnish_id,
        :instructions,
        :description,
        drink_ingredients_attributes: [
          :ingredient_id,
          :amount,
          :amount_unit,
        ],
      ]
    )
  end
end
