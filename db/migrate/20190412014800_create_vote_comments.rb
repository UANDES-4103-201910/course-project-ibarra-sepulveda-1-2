class CreateVoteComments < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_comments do |t|
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
