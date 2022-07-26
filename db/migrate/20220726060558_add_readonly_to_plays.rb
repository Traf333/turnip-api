class AddReadonlyToPlays < ActiveRecord::Migration[6.1]
  def change
    add_column :plays, :active, :boolean, default: false
  end
end
