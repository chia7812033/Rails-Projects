class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.integer :event_register_id
      t.integer :registered_event_id

      t.timestamps
    end
  end
end
