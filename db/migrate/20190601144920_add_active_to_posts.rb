class AddActiveToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :active, :boolean
  	add_column :posts, :solver, :boolean
  end
end
