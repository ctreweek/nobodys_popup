class AddReferenceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :attendees, foreign_key: true
  end
end
