class AddRolesToPlay < ActiveRecord::Migration[6.1]
  def change
    add_column :plays, :roles, :text, array: true, default: []
  end
end
