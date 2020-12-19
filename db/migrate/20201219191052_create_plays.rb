class CreatePlays < ActiveRecord::Migration[6.1]
  def change
    create_table :plays do |t|
      t.string :title
      t.string :play_type
      t.text :description
      t.string :author
      t.date :release_date

      t.timestamps
    end
  end
end
