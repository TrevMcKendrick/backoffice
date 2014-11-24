class AddTogglIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :toggl_id, :string
  end
end
