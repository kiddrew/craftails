class BarsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_bar, only: [:edit, :update]
  before_action :check_for_correct_user, only: [:edit, :update]

  def update
    update! { my_bar_path }
  end

  private

  def set_bar
    @bar = current_user.bar
  end

  def check_for_correct_user
    redirect_to root_path unless current_user.id == @bar.user_id
  end

  def permitted_params
    params.permit(
      :bar => [
        :ingredient_ids => [],
      ]
    )
  end
end
