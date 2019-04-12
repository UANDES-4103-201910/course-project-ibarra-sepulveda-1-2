class CommentVotedByUser < ApplicationRecord
  has_many :vote_comment
  has_many :user
end
