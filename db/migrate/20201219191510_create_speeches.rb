class CreateSpeeches < ActiveRecord::Migration[6.1]
  def change
    create_table :speeches do |t|
      t.text :text
      t.belongs_to :play, null: false, foreign_key: true

      t.timestamps
    end
  end
end
