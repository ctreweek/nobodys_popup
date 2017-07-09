class RemoveEventsIdFromAttendees < ActiveRecord::Migration[5.0]
  def change
    remove_column :attendees, :events_id
  end
end
