class RemoveReferenceFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :attendees_id
  end
end
