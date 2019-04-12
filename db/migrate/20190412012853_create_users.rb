class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :biography
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
