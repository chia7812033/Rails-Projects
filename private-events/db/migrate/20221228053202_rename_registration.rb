class RenameRegistration < ActiveRecord::Migration[7.0]
  def change
    change_table :registrations do |t|
      t.rename :event_register_id, :attendee_id
      t.rename :registered_event_id, :attended_event_id
    end
  end
end
