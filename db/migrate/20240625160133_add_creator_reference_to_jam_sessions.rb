class AddCreatorReferenceToJamSessions < ActiveRecord::Migration[7.1]
  def change
    # Add a temporary column to store creator_id
    add_column :jam_sessions, :temp_creator_id, :integer

    # Set a valid creator_id for existing rows
    JamSession.find_each do |jam_session|
      # Replace `1` with a valid user_id or modify the logic to set a default value
      jam_session.update_columns(temp_creator_id: jam_session.user_id || 1)
    end

    # Remove the old user_id column if it exists
    remove_column :jam_sessions, :user_id if column_exists?(:jam_sessions, :user_id)

    # Remove the old creator_id column if it exists
    remove_column :jam_sessions, :creator_id if column_exists?(:jam_sessions, :creator_id)

    # Add the new reference column with null: true temporarily
    add_reference :jam_sessions, :creator, null: true, foreign_key: { to_table: :users }

    # Populate the new column from the temporary column
    JamSession.reset_column_information
    JamSession.find_each do |jam_session|
      jam_session.update_columns(creator_id: jam_session.temp_creator_id)
    end

    # Remove the temporary column
    remove_column :jam_sessions, :temp_creator_id

    # Change the column to non-nullable after populating values
    change_column_null :jam_sessions, :creator_id, false
  end
end
