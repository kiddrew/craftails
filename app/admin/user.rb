ActiveAdmin.register User do

  permit_params :email, :name

  index do
    column :name
    column :email
      actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
    end
    f.actions
  end
end
