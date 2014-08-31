ActiveAdmin.register Ingredient do
#  sortable tree: true,
#           sorting_attribute: :name

  permit_params :name, :parent_id, :parent, :is_selectable

  remove_filter :bar_ingredients

  index do
    label :name
      actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :parent_id, collection: Ingredient.sorted_list
      f.input :is_selectable
    end
    f.actions
  end
end
