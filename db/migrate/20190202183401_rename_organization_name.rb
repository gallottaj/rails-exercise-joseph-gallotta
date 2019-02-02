class RenameOrganizationName < ActiveRecord::Migration[5.2]
  def change
    rename_column :organizations, :organization_name, :organization
  end
end
