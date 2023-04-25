ActiveAdmin.register Student do
  permit_params :name, :grade, :created_at

  index do
    selectable_column
    id_column
    column :name
    column :grade
    column :created_at
    actions
  end

  filter :name
  filter :grade
  filter :created_at
end
