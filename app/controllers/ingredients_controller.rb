class IngredientsController < InheritedResources::Base
  include TheSortableTreeController::Rebuild

  before_filter :authenticate_user!, only: [:new, :create]
  before_filter :authenticate_admin!, only: [:edit, :update, :destroy]

  def collection
    @ingredients = Ingredient.all.sort_by { |o| o.canonical_name }
  end

  def permitted_params
    params.permit(
      :ingredient => [
        :name,
        :image_url,
        :description,
        :parent_id,
      ]
    )
  end
end
