class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :start_time
      t.string :end_time
      t.string :description
      t.references :user

      t.timestamps
    end
  end
end
