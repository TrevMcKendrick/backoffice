class AddTogglIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :toggl_id, :string
  end
end
