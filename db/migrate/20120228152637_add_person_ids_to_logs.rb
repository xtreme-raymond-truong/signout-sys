class AddPersonIdsToLogs < ActiveRecord::Migration
  def change
    add_column :signout_logs, :current_person_id, :integer
  end
end
