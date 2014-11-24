class RemoveTogglIdFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :toggl_id, :string
  end
end
