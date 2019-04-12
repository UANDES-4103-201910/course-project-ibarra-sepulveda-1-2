class CreateCommentVotedByUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_voted_by_users do |t|
      t.references :vote_comment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
