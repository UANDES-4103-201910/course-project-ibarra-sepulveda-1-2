class CommentVotedByUser < ApplicationRecord
  belongs_to :vote_comment
  belongs_to :user
end
