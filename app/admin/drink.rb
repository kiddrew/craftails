ActiveAdmin.register Drink do
  permit_params :name

  index do
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :garnish_id, collection: Garnish.all
    end
    f.actions
  end
end
