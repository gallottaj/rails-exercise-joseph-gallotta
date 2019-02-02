class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :organization_name
      t.string :organization_phone
      t.string :domain
      t.string :address_id

      t.timestamps
    end
  end
end
