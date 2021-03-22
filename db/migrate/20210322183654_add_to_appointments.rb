class AddToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :doctor, foreign_key: true
  end
end
