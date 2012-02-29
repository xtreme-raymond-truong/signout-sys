class CreateSignoutLogs < ActiveRecord::Migration
  def change
    create_table :signout_logs do |t|
      t.integer :device_id
      t.string :device_type

      t.timestamps
    end
  end
end
