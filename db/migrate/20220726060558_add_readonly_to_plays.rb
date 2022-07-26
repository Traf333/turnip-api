class AddReadonlyToPlays < ActiveRecord::Migration[6.1]
  def change
    add_column :plays, :readonly, :boolean, default: false
  end
end
