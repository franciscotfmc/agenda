class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :description
      t.date :due_date
      t.time :due_time

      t.timestamps
    end
  end
end
