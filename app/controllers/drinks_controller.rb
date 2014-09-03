class DrinksController < InheritedResources::Base
  respond_to :html, :json, :except => [:destroy]
  before_filter :authenticate_user!, only: [:new, :create]
  before_filter :authenticate_admin!, only: [:edit, :update]
  before_action :prepare_params, only: [:create, :update]

  def edit
    @drink = Drink.find(params['id'])
    (6-@drink.ingredients.count).times do
      @drink.drink_ingredients.build
    end
  end

  def create
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

  private

  def prepare_params
    tmp = {}
    params['drink']['drink_ingredients_attributes'].each do |k,v|
      if v['amount'].present? and v['amount_unit'].present? and v['ingredient_id'].present?
        tmp[k] = v
      end
    end
    params['drink']['drink_ingredients_attributes'] = tmp
  end

  def permitted_params
    params.permit(
      :drink => [
        :name,
        :garnish_id,
        :instructions,
        :description,
        drink_ingredients_attributes: [
          :id,
          :drink_id,
          :ingredient_id,
          :amount,
          :amount_unit,
        ],
      ]
    )
  end
end
