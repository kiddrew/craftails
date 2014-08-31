ActiveAdmin.register Garnish do
  permit_params :name

  index do
    column :name
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
