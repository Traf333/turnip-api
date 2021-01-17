class AddVersionToSpeech < ActiveRecord::Migration[6.1]
  def change
    add_column :speeches, :version, :integer, null: false, default: 0
  end
end
