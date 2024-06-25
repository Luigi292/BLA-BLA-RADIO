class AddTimeToJamSessions < ActiveRecord::Migration[7.1]
  def change
    add_column :jam_sessions, :time, :datetime
  end
end
