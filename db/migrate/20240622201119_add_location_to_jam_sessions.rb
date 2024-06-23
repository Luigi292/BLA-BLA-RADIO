class AddLocationToJamSessions < ActiveRecord::Migration[7.1]
  def change
    add_column :jam_sessions, :location, :string
  end
end
