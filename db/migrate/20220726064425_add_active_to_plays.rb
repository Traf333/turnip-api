class AddActiveToPlays < ActiveRecord::Migration[6.1]
  def change
    remove_column :plays, :readonly, :boolean
    add_column :plays, :active, :boolean, default: false
  end
end
