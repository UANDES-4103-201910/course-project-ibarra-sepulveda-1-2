class CreateSuperAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :super_admins do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
