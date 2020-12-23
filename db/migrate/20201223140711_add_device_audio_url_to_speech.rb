class AddDeviceAudioUrlToSpeech < ActiveRecord::Migration[6.1]
  def change
    add_column :speeches, :device_audio_url, :string
  end
end
