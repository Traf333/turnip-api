ActiveAdmin.register Play do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :source_from_file, :description, :author, :release_date, :roles_list
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :play_type, :description, :author, :release_date, :roles]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs 'Some' do
      f.input :title
      f.input :description
      f.input :author
      f.input :roles_list
      f.input :source_from_file, as: :file
    end

    f.actions
  end
end
