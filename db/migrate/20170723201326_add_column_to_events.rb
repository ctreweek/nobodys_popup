class AddColumnToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :address, :string
    remove_column :events, :location
  end
end
