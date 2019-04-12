class CreatePostVotedByUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :post_voted_by_users do |t|
      t.references :vote_post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
