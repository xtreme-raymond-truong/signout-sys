class AddFormerPeopleIdToLogs < ActiveRecord::Migration
  def change
    add_column :signout_logs, :former_person_1_id, :integer
    add_column :signout_logs, :former_person_2_id, :integer
  end
end
