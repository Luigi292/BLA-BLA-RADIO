class AddUserReferenceToJamSessions < ActiveRecord::Migration[7.1]
  def change
    # Ensure creator_id column exists before adding foreign key
    add_foreign_key :jam_sessions, :users, column: :creator_id, name: 'fk_jam_sessions_creator_id'
  end
end
